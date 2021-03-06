# Separate file for variables - this when you pull down the latest factory file you can keep your paths / product keys etc...
$acceptEULAs = $false
$workingDir = "C:\FactoryTest"
$logFile = "$($workingDir)\Share\Details.csv"
$ResourceDirectory = "$($workingDir)\Resources" 
$Organization = "Windows Image Factory"
$Owner = "Windows Image Factory"
$Timezone = "Pacific Standard Time"
$adminPassword = "P@ssw0rd"
$userPassword = "P@ssw0rd"

# VM Settings
    # Name of the VM - make sure this does not conflict with any existing virtual machine, because it gets deleted automatically!
    $factoryVMName = "Factory VM"

    # Amount of memory to give the VM - more memory usually makes updates install faster
    $VMMemory = 2048mb

    # Virtual switch to connect to - needs internet access to download updates
    $virtualSwitchName = "Virtual Switch"

    # Set to $true and specify VLAN id to connect the VM to a specific VLAN
    $UseVLAN = $false
    $VlanId = 1

    # Enable to use a static IP address for the VM.  Default is to use DHCP
    $UseStaticIP = $false
    $IP = '10.10.10.10'
    $MaskBits = 24
    $Gateway = '10.10.10.1'
    $Dns = '10.10.10.2'
    $IPType = 'IPv4'


# Keys
$Windows10Key = ""
$Windows81Key = ""
$Windows2012R2Key = ""
$Windows8Key = ""
$Windows2012Key = ""
$Windows7Key = ""
$windows7EntKey = ""
$Windows2008R2Key = ""

# ISOs /  WIMs
# Note: Default ISO names taken from the MSDN Subscriber download naming convention
$2012Image = "$($workingDir)\ISOs\en_windows_server_2012_x64_dvd_915478.iso"
$2012R2Image = "$($workingDir)\ISOs\en_windows_server_2012_r2_x64_dvd_2707946.iso"
$7x86Image = "$($workingDir)\ISOs\en_windows_7.iso"
$7x64Image = "$($workingDir)\ISOs\en_windows_7_professional_with_sp1_x64_dvd_u_676939.iso"
$7EntImage = "$($workingDir)\ISOs\en_windows_7_ent.iso"
$7x86EntImage = "$($workingDir)\ISOs\en_windows_7_ent.iso"
$2008R2Image = "$($workingDir)\ISOs\en_windows_2008_r2_x64.iso"
$8x86Image = "$($workingDir)\ISOs\en_windows_8_x86_dvd_915417.iso"
$8x64Image = "$($workingDir)\ISOs\en_windows_8_x64_dvd_915440.iso"
$81x86Image = "$($workingDir)\ISOs\en_windows_8_1_x86_dvd_2707392.iso"
$81x64Image = "$($workingDir)\ISOs\en_windows_8.1_with_update_x64_dvd_4065090.iso"
$10x86Image = "$($workingDir)\ISOs\en_windows_10_multiple_editions_x86_dvd_6848465.iso"
$10x64Image = "$($workingDir)\ISOs\en_windows_10_multiple_editions_x64_dvd_6846432.iso"

# Misc Settings
# If $startfactory is false, just import the functions to use in other scripts.  If true, start image generation.
$StartFactory = $true

# If enabled, will use dism.exe to clean the WinSXS folder and remove old updates. This can give significant disk savings, but takes longer (20-30 minutes per image). Updates will not be able to be uninstalled if this is enabled.
$CleanWinSXS = $false