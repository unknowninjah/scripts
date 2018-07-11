#SingleInstance force
Modified=07-10-2018 

PrintScreen::
 ; ### Check If DS-VIEW is active.
if WinActive("ahk_class SunAwtFrame") or WinActive("ahk_class" . SunAwtFrame)  
{
 ; ### Check IF DSView is active, Send this message.
MsgBox, 0, Nope!, This button does not work in DS-View. `nPlease use SSH or Remote Desktop, 4
return
}
 ; ### Check If Outlook is active.
if WinActive("ahk_class rctrl_renwnd32") or WinActive("ahk_class" . rctrl_renwnd32)  
{
 ; ### IF Outlook is active, Send this message.
MsgBox, 0, Nope!, This button does not work in Emails. `nIf you need the script use it in notepad., 4
return
}
 ; ### Check If Slack is active.
if WinActive("ahk_class Chrome_WidgetWin_1") or WinActive("ahk_class" . Chrome_WidgetWin_1) 
{
 ; ### IF Slack is active, Send this message.
MsgBox, 0, Nope!, This button does not work in Browser or Slack. `nIf you need the script use it in notepad., 4
return
}
 ; ### Check If Desktop is active.
if WinActive("ahk_class WorkerW") or WinActive("ahk_class" . WorkerW)
{
 ; ### IF Desktop is active, Send this message.
MsgBox, 0, Nope!, This button does not work outside of applications. `nPlease select an application and retry., 4
return
}
 ; ### Check If Taskbar is active.
if WinActive("ahk_class Shell_TrayWnd") or WinActive("ahk_class" . Shell_TrayWnd)  
{
 ; ### IF Taskbar is active, Send this message.
MsgBox, 0, Nope!, This button does not work outside of applications. `nPlease select an application and retry., 4
return
}
 ; ### If Windows is Active.
if WinActive("ahk_class TscShellContainerClass") or WinActive("ahk_class" . TscShellContainerClass)  
{
 ; ### Start of WINDOWS Commands.
sleep 200
sendinput cls && echo TheButton - Last Updated: %Modified% &&
sendinput echo ----------- CHASSIS INFO ------------------------------------------- && 
sendinput omreport chassis info|findstr "Host Model Service"|findstr -v Code && 
sendinput omreport chassis |findstr -v "Health Main further" && 
sendinput echo ----------- OMSA INFO ---------------------------------------------- && 
sendinput omreport about |findstr  "Ver" && 
sendinput echo ----------- BIOS INFO ---------------------------------------------- && 
sendinput omreport chassis bios|findstr Version && 
sendinput echo ----------- MEMORY INFO -------------------------------------------- && 
sendinput omreport chassis memory |findstr  "Health Slot" && 
sendinput echo ----------- ROMB INFO ---------------------------------------------- && 
sendinput omreport storage battery|findstr "State Status Controller" && 
sendinput echo ----------- PSU INFO ----------------------------------------------- && 
sendinput omreport chassis pwrsupplies|findstr Status |findstr -v Online && 
sendinput echo ----------- PERC INFO ---------------------------------------------- && 
sendinput omreport storage controller|findstr "ID Status Name Version"|findstr -v "Initiator Storport" && 
sendinput echo ----------- RAID INFO ---------------------------------------------- && 
sendinput omreport storage vdisk|findstr "ID State Layout Size Controller"|findstr -v "Stripe Fluid" && 
sendinput echo ----------- DRIVE INFO --------------------------------------------- && 
sendinput omreport storage pdisk controller=0|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput omreport storage pdisk controller=1|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput omreport storage pdisk controller=2|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput omreport storage pdisk controller=3|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput echo -------------------------------------------------------------------- `n
return
}
 ; ### If mRemote is Active. (Windows 10)
if WinActive("ahk_class WindowsForms10.Window.8.app.0.3496e67_r9_ad1") or WinActive("ahk_class" . WindowsForms10.Window.8.app.0.3496e67_r9_ad1)  
{
 ; ### Start of mRemote Commands.
sleep 200
sendinput cls && echo TheButton - Last Updated: %Modified% &&
sendinput echo ----------- CHASSIS INFO ------------------------------------------- && 
sendinput omreport chassis info|findstr "Host Model Service"|findstr -v Code && 
sendinput omreport chassis |findstr -v "Health Main further" && 
sendinput echo ----------- OMSA INFO ---------------------------------------------- && 
sendinput omreport about |findstr  "Ver" && 
sendinput echo ----------- BIOS INFO ---------------------------------------------- && 
sendinput omreport chassis bios|findstr Version && 
sendinput echo ----------- MEMORY INFO -------------------------------------------- && 
sendinput omreport chassis memory |findstr  "Health Slot" && 
sendinput echo ----------- ROMB INFO ---------------------------------------------- && 
sendinput omreport storage battery|findstr "State Status Controller" && 
sendinput echo ----------- PSU INFO ----------------------------------------------- && 
sendinput omreport chassis pwrsupplies|findstr Status |findstr -v Online && 
sendinput echo ----------- PERC INFO ---------------------------------------------- && 
sendinput omreport storage controller|findstr "ID Status Name Version"|findstr -v "Initiator Storport" && 
sendinput echo ----------- RAID INFO ---------------------------------------------- && 
sendinput omreport storage vdisk|findstr "ID State Layout Size Controller"|findstr -v "Stripe Fluid" && 
sendinput echo ----------- DRIVE INFO --------------------------------------------- && 
sendinput omreport storage pdisk controller=0|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput omreport storage pdisk controller=1|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput omreport storage pdisk controller=2|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput omreport storage pdisk controller=3|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput echo -------------------------------------------------------------------- `n
return
}
 ; ### If mRemote is Active. (Windows7/8)
if WinActive("ahk_class WindowsForms10.Window.8.app.0.378734a") or WinActive("ahk_class" . WindowsForms10.Window.8.app.0.378734a)  
{
 ; ### Start of mRemote Commands.
sleep 200
sendinput cls && echo TheButton - Last Updated: %Modified% &&
sendinput echo ----------- CHASSIS INFO ------------------------------------------- && 
sendinput omreport chassis info|findstr "Host Model Service"|findstr -v Code && 
sendinput omreport chassis |findstr -v "Health Main further" && 
sendinput echo ----------- OMSA INFO ---------------------------------------------- && 
sendinput omreport about |findstr  "Ver" && 
sendinput echo ----------- BIOS INFO ---------------------------------------------- && 
sendinput omreport chassis bios|findstr Version && 
sendinput echo ----------- MEMORY INFO -------------------------------------------- && 
sendinput omreport chassis memory |findstr  "Health Slot" && 
sendinput echo ----------- ROMB INFO ---------------------------------------------- && 
sendinput omreport storage battery|findstr "State Status Controller" && 
sendinput echo ----------- PSU INFO ----------------------------------------------- && 
sendinput omreport chassis pwrsupplies|findstr Status |findstr -v Online && 
sendinput echo ----------- PERC INFO ---------------------------------------------- && 
sendinput omreport storage controller|findstr "ID Status Name Version"|findstr -v "Initiator Storport" && 
sendinput echo ----------- RAID INFO ---------------------------------------------- && 
sendinput omreport storage vdisk|findstr "ID State Layout Size Controller"|findstr -v "Stripe Fluid" && 
sendinput echo ----------- DRIVE INFO --------------------------------------------- && 
sendinput omreport storage pdisk controller=0|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput omreport storage pdisk controller=1|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput omreport storage pdisk controller=2|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput omreport storage pdisk controller=3|findstr "Capacity ID State +5 Serial Yes"|findstr -v "Mirror RAID Vendor Product" &
sendinput echo -------------------------------------------------------------------- `n
return
}
; ### Start of OMSA Commands.
sendinput clear && 
sendinput WHITE='\033[1`;37m' &&
sendinput ORNGE='\e[38`;5`;214m' &&
sendinput GRN='\033[0`;32m' && 
sendinput NC='\033[0m' && 
sendinput echo -e +4+[WHITE+]TheButton - Last Updated: %Modified% +4+[NC+] &&
sendinput echo -e +4+[ORNGE+]----------- +4+[GRN+]CHASSIS INFO +4+[ORNGE+]---------------------------------------------+4+[NC+] &&
sendinput if omreport chassis info 2>/dev/null |grep '6220\|6320\|6100'`; then omreport chassis info 2>/dev/null|grep 'Host'`; dmidecode 2>/dev/null |grep UUID -B1|grep -v UUID |awk 'NF'`; else if dmidecode 2>/dev/null|grep 'Base Board Information' -A4 |grep Manufacturer|grep Supermicro --silent`; then dmidecode 2>/dev/null|grep 'Base Board Information' -A4 |grep 'Manufacturer\|Serial Number' &&  echo -e +4+[ORNGE+]----------- +4+[GRN+]PROCESSOR INFO +4+[ORNGE+]-------------------------------------------+4+[NC+] &&  dmidecode 2>/dev/null|grep 'Processor Information' -A40 |grep 'Socket Designation\|Version\|Core Count\|Core Enabled' && echo -e +4+[ORNGE+]----------- +4+[GRN+]MEMORY INFO +4+[ORNGE+]----------------------------------------------+4+[NC+] &&  echo -ne "        Number of DIMMs Installed: " && dmidecode 2>/dev/null|grep 'Physical Memory Array' -A6|grep 'Number Of Devices' |awk '+[print +44+]'|uniq  && echo  -n "        Number Of DIMMs Detected: " && dmidecode 2>/dev/null|grep 'Registered (Buffered)' -c && echo -e +4+[ORNGE+]----------- +4+[GRN+]POWER SUPPLY INFO +4+[ORNGE+]----------------------------------------+4+[NC+] &&  dmidecode 2>/dev/null|grep 'Chassis Information' -A8 |grep 'Power Supply State' && dmidecode 2>/dev/null|grep 'System Power Supply' -A20 |grep 'Status\|Plugged\|Hot Replaceable\|Power Supply State' && echo -e +4+[ORNGE+]----------- +4+[GRN+]DRIVE INFO+4+[ORNGE+]------------------------------------------------+4+[NC+]&&  for i in +[0..9+]`; do  smartctl -H /dev/sg+4i |grep 'SMART overall-health self-assessment test result'`; smartctl -i /dev/sg+4i |grep Serial`; done && echo ---------------------------------------------------------------------- `; else if omreport chassis info 2>/dev/null|grep 'Model\|Host'`; then omreport chassis info 2>/dev/null|grep 'Service Tag' `; else echo "Things you can try: "`; echo "Restart OMSA with the following command: srvadmin-services.sh restart"`; echo "Once restarted re-attempt TheButton."`; echo "If issue persists with TheButton, Please run commands normally, There seems to be an issue with OMSA."`; echo "If OMSA issues continue, create a change to update/reinstall OMSA."`; fi`; fi`; fi &&
sendinput echo -e +4+[ORNGE+]----------- +4+[GRN+]OMSA INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] && 
sendinput omreport about 2>/dev/null|grep  "Version" && 
sendinput echo -e +4+[ORNGE+]----------- +4+[GRN+]BIOS INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] && 
sendinput omreport chassis bios|grep 'Ver' && 
sendinput echo -e +4+[ORNGE+]----------- +4+[GRN+]Memory INFO +4+[ORNGE+]----------------------------------------------+4+[NC+] && 
sendinput omreport chassis memory|grep Health && 
sendinput echo -e +4+[ORNGE+]----------- +4+[GRN+]ROMB INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] && 
sendinput if omreport chassis info|grep '6100\|6220\|6320' --silent`; then /opt/MegaRAID/MegaCli/MegaCli -AdpBbuCmd -a0|grep 'Active\|Battery State\|Charging Status\|Pack is about to fail & should be replaced\|Battery Replacement required\|Battery Pack Missing\|Relative State of Charge\|Absolute State of charge'|uniq`; else omreport storage battery|grep 'Status\|State\|Controller'`; fi &&
sendinput echo -e +4+[ORNGE+]----------- +4+[GRN+]PERC INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] && 
sendinput if omreport chassis info|grep '6100\|6220\|6320' --silent`; then /opt/MegaRAID/MegaCli/MegaCli -adpallinfo -a0|grep -A3 "Product Name" | awk 'NF'`; else omreport storage controller|grep 'Firm\|Name\|ID\|Status\|State'|grep -v 'Patrol\|Applicable\|Slot'`;fi &&
sendinput echo -e +4+[ORNGE+]----------- +4+[GRN+]RAID INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] &&
sendinput if omreport chassis info|grep '6100\|6220\|6320' --silent`; then /opt/MegaRAID/MegaCli/MegaCli -ldinfo -lall -a0|grep 'Adapter\|RAID\|State\|Drives'`; else omreport storage vdisk|grep 'Status\|State\|Layout\|Size'|grep -v 'Stripe\|Associated\|Protection'`; fi && 
sendinput echo -e +4+[ORNGE+]----------- +4+[GRN+]DRIVE INFO +4+[ORNGE+]-----------------------------------------------+4+[NC+] && 
sendinput if omreport chassis info|grep '6220\|6320\|6100' --silent`; then /opt/MegaRAID/MegaCli/MegaCli -pdlist -aall 2>/dev/null| grep 'Slot\|Firmware state\|Predictive Failure Count'`; else omreport storage adisk controller=0 2>/dev/null|grep 'State\|Failure Predicted' |grep -v Power`; omreport storage adisk controller=1 2>/dev/null|grep 'State\|Failure Predicted' |grep -v Power`; omreport storage adisk controller=2 2>/dev/null|grep 'State\|Failure Predicted' |grep -v Power`; omreport storage adisk controller=3 2>/dev/null|grep 'State\|Failure Predicted' |grep -v Power`; omreport storage adisk controller=4 2>/dev/null|grep 'State\|Failure Predicted' |grep -v Power`; echo | awk 'NF'`;fi &&
sendinput echo -e +4+[ORNGE+]----------------------------------------------------------------------+4+[NC+] `n
return

; ### Start of Failure/Faults Commands.
Pause::
 ; ### Check If DS-VIEW is active.
if WinActive("ahk_class SunAwtFrame") or WinActive("ahk_class" . SunAwtFrame)  
{
 ; ### Check IF DSView is active, Send this message.
MsgBox, 0, Nope!, This button does not work in DS-View. `nPlease use SSH or Remote Desktop, 4
return
}
 ; ### Check If Outlook is active.
if WinActive("ahk_class rctrl_renwnd32") or WinActive("ahk_class" . rctrl_renwnd32)  
{
 ; ### IF Outlook is active, Send this message.
MsgBox, 0, Nope!, This button does not work in Emails. `nIf you need the script use it in notepad., 4
return
}
 ; ### Check If Slack is active.
if WinActive("ahk_class Chrome_WidgetWin_1") or WinActive("ahk_class" . Chrome_WidgetWin_1) 
{
 ; ### IF Slack is active, Send this message.
MsgBox, 0, Nope!, This button does not work in Browser or Slack. `nIf you need the script use it in notepad., 4
return
}
 ; ### Check If Desktop is active.
if WinActive("ahk_class WorkerW") or WinActive("ahk_class" . WorkerW)
{
 ; ### IF Desktop is active, Send this message.
MsgBox, 0, Nope!, This button does not work outside of applications. `nPlease select an application and retry., 4
return
}
 ; ### Check If Taskbar is active.
if WinActive("ahk_class Shell_TrayWnd") or WinActive("ahk_class" . Shell_TrayWnd)  
{
 ; ### IF Taskbar is active, Send this message.
MsgBox, 0, Nope!, This button does not work outside of applications. `nPlease select an application and retry., 4
return
}
if WinActive("ahk_class TscShellContainerClass") or WinActive("ahk_class" . TscShellContainerClass)  
{
 ; ### IF Windows is Active.
MsgBox, 0, Nope!, This button does not work in Windows. `n., 4
return
}
sendinput clear && 
sendinput WHITE='\033[1`;37m' &&
sendinput ORNGE='\e[38`;5`;214m' &&
sendinput GRN='\033[0`;32m' && 
sendinput NC='\033[0m' && 
sendinput echo -e +4+[WHITE+]TheButton2.0 - Last Updated: %Modified% +4+[NC+] &&
sendinput echo -e +4+[ORNGE+]----------- +4+[GRN+]CHASSIS INFO +4+[ORNGE+]---------------------------------------------+4+[NC+] &&
sendinput if omreport chassis info 2>/dev/null|grep '6220\|6320\|6100' --silent`; then omreport chassis info 2>/dev/null|grep 'Host\|Model'`; dmidecode 2>/dev/null|grep UUID -B1|grep -v UUID|awk 'NF'`; else if omreport chassis info 2>/dev/null |grep 'Model\|Host'`; then omreport chassis info 2>/dev/null |grep 'Service Tag'`; else echo "Please run commands normally, There seems to be an issue with OMSA."`; echo "Things you can try: "`; echo "Restart OMSA with the following command: " `; echo -e +4+[GRN+]          srvadmin-services.sh restart +4+[NC+]`; echo "If OMSA issues continue, create a change to update/reinstall OMSA."`; fi`; fi &&
sendinput echo -e +4+[ORNGE+]----------------------------------------------------------------------+4+[NC+] && 
sendinput omreport chassis 2>/dev/null|grep -v 'Ok\|For\|SEVERITY\|Chassis\|Health'|awk 'NF' &&
sendinput if omreport chassis memory 2>/dev/null|grep Critical --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]MEMORY +4+[ORNGE+]---------------------------------------------------+4+[NC+]`; omreport chassis memory 2>/dev/null|grep 'Health\|Critical' -B1 -A3|grep -v 'Operating\|--'|awk 'NF'`;  fi &&
sendinput if omreport system esmlog 2>/dev/null|grep 'full' --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]LOGS +4+[ORNGE+]-----------------------------------------------------+4+[NC+]`; echo -n "ESM Logs Last Cleared: " && omreport system esmlog 2>/dev/null|grep clear -B1|grep Date |awk '+[print +45" "+46" "+47" "+48" "+49+]' `; omreport system esmlog|grep full 2>/dev/null|grep -v almost `; echo -n "Alert Logs Last Cleared: " && omreport system alertlog 2>/dev/null|grep Date|tail -n1|awk '+[print +45" "+46" "+47" "+48" "+49+]' `; omreport system alertlog 2>/dev/null|grep full `; fi &&
sendinput if omreport system esmlog 2>/dev/null |grep 'The  low battery is low.' --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]CMOS BATTERY +4+[ORNGE+]---------------------------------------------+4+[NC+]`; echo "CMOS Battery Replacement Required: Yes"`; echo -n "Last Alert Received: "`; omreport system esmlog 2>/dev/null |grep 'The  low battery is low.' -B1|tail -n 2|grep Time | awk '+[print +45" "+46" "+47" "+48" "+49+]'`; echo -n "Number of Alert Received: "`; omreport system esmlog 2>/dev/null |grep 'The  low battery is low.' -c`; else if omreport chassis batteries |grep Status|grep -v Reading|grep 'Unknown\|Missing\|Degraded\|Critical\|Failed' --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]CMOS BATTERY +4+[ORNGE+]---------------------------------------------+4+[NC+]`; echo "CMOS Battery Replacement Required: Yes"`; omreport chassis batteries`; fi`; fi &&
sendinput if omreport chassis processors 2>/dev/null|grep 'Failed\|Critical\|Degraded\|Missing' --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]PROCESSORS +4+[ORNGE+]-----------------------------------------------+4+[NC+]`; omreport chassis processors 2>/dev/null|grep 'Failed\|Critical\|Degraded\|Missing' -B1 -A5`; fi && 
sendinput if omreport chassis info 2>/dev/null|grep '6220\|6320\|6100' --silent`; then if /opt/MegaRAID/MegaCli/MegaCli -ldinfo -lall -a0 2>/dev/null|grep 'Failed\|Critical\|Degraded' --silent`; then echo -e +4+[WHITE+]----------- VIRTUAL DRIVE --------------------------------------------+4+[NC+]`; /opt/MegaRAID/MegaCli/MegaCli -ldinfo -lall -a0 2>/dev/null|grep 'RAID\|State\|Number Of Drives'`; fi`; else if omreport storage vdisk 2>/dev/null|grep 'Failed\|Critical\|Degraded' --silent`; then echo -e +4+[WHITE+]----------- VIRTUAL DRIVE --------------------------------------------+4+[NC+]`; omreport storage vdisk 2>/dev/null|grep 'Status\|State\|Layout'`; fi`; fi &&
sendinput if omreport chassis pwrsupplies 2>/dev/null|grep Location|grep Mismatch --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]POWER SUPPLIES +4+[ORNGE+]-------------------------------------------+4+[NC+]`; echo "Both PSU have been checked and are in OK status."`; echo "The PSU alert is due to a false positive, leadership is currently"`; echo "        working on a fix."`; else if  omreport chassis pwrsupplies 2>/dev/null|grep 'Location' -B1|grep Critical --silent`; then echo -e +4+[WHITE+]----------- POWER SUPPLIES -------------------------------------------+4+[NC+]`; omreport chassis pwrsupplies 2>/dev/null|grep 'Critical' -A1`;  fi`; fi && 
sendinput if omreport chassis fans 2>/dev/null|grep 'Critical\|Degraded' --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]FANS +4+[ORNGE+]-----------------------------------------------------+4+[NC+] && omreport chassis fans 2>/dev/null|grep 'Redundancy Status\|Status\|Index\|Probe Name'|grep -A1 'Critical\|Degraded'`; fi &&
sendinput if omreport chassis info 2>/dev/null|grep '6220\|6320\|6100' --silent`; then if /opt/MegaRAID/MegaCli/MegaCli -AdpBbuCmd -a0 2>/dev/null|grep 'Battery Replacement required'|grep Yes --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]ROMB BATTERY +4+[ORNGE+]---------------------------------------------+4+[NC+]`; /opt/MegaRAID/MegaCli/MegaCli -AdpBbuCmd -a0 2>/dev/null|grep 'Active\|Battery State\|Charging Status\|Pack is about to fail +7 should be replaced\|Battery Replacement required\|Battery Pack Missing\|Relative State of Charge\|Absolute State of charge'|uniq`; /opt/MegaRAID/MegaCli/MegaCli64 -AdpBbuCmd -a0 2>/dev/null|grep 'Active\|Battery State\|Charging Status\|Pack is about to fail +7 should be replaced\|Battery Replacement required\|Battery Pack Missing\|Relative State of Charge\|Absolute State of charge'|uniq`; fi`; else if omreport storage battery 2>/dev/null |grep 'Critical\|Degraded' --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]ROMB BATTERY +4+[ORNGE+]---------------------------------------------+4+[NC+]`; omreport storage battery 2>/dev/null|grep 'Status\|State\|Learn State' `; else echo ""`; fi`; fi &&
sendinput if omreport chassis info 2>/dev/null|grep '6220\|6320\|6100' --silent`; then if /opt/MegaRAID/MegaCli/MegaCli -pdlist -aall 2>/dev/null|grep 'Critical' --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]DRIVE INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] `; /opt/MegaRAID/MegaCli/MegaCli -pdlist -aall 2>/dev/null |egrep '+6(Slot|Firmware state|Raw Size|Inquiry Data)'|grep -B2 -A1 'Failed'`; else if  /opt/MegaRAID/MegaCli/MegaCli64 -pdlist -aall 2>/dev/null|grep 'Critical' --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]DRIVE INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] `; /opt/MegaRAID/MegaCli/MegaCli -pdlist -aall 2>/dev/null |egrep '+6(Slot|Firmware state|Raw Size|Inquiry Data)'|grep -B2 -A1 'Failed'`; fi`; fi`;  fi && if /opt/MegaRAID/MegaCli/MegaCli -pdlist -aall 2>/dev/null|grep 'Unconfigured' --silent`; then echo -e +4+[ORNGE+]----------- +4+[GRN+]DRIVE INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] `; /opt/MegaRAID/MegaCli/MegaCli -pdlist -a0 2>/dev/null |grep 'Slot\|Unconfigured\|Predictive Failure Count\|Inquiry Data'|grep Unconfigured -B2 -A1 || true`; echo -e +4+[ORNGE+]----------- +4+[GRN+]DRIVE INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] `; /opt/MegaRAID/MegaCli/MegaCli64 -pdlist -a0 2>/dev/null |grep 'Slot\|Unconfigured\|Predictive Failure Count\|Inquiry Data'|grep Unconfigured -B2 -A1 || true`; fi && if /opt/MegaRAID/MegaCli/MegaCli -pdlist -aall 2>/dev/null|grep Rebuild --silent`; then  echo -e +4+[ORNGE+]----------- +4+[GRN+]DRIVE INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] `; echo "Drive is currently rebuilding"`; echo "Run the following command to check status:"`; echo "/opt/MegaRAID/MegaCli/MegaCli -PDRbld -ShowProg -PhysDrv [E:S] -a0"`; fi && if  omreport storage adisk controller=0 2>/dev/null|grep -e '+6Status' -e'+6Name' -e '+6State' -e 'Vendor ID' -e 'Serial' -e 'Capacity'|grep -B2 -A4 'Failed' --silent `; then  echo -e +4+[ORNGE+]----------- +4+[GRN+]DRIVE INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] `; omreport storage adisk controller=0 2>/dev/null|grep -e '+6Status' -e'+6Name' -e '+6State' -e 'Vendor ID' -e 'Serial' -e 'Capacity'|grep -B2 -A4 'Failed'`; fi && if omreport storage adisk controller=0 2>/dev/null|grep -e '+6Status' -e'+6Name' -e '+6State' -e 'Vendor ID' -e 'Serial' -e 'Capacity' -e 'Failure Predicted'|grep -A6 "Non-Critical" --silent `; then echo -e +4+[ORNGE+]----------- +4+[GRN+]DRIVE INFO +4+[ORNGE+]------------------------------------------------+4+[NC+] `; omreport storage adisk controller=0 2>/dev/null|grep -e '+6Status' -e'+6Name' -e '+6State' -e 'Vendor ID' -e 'Serial' -e 'Capacity' -e 'Failure Predicted'|grep -A6 "Non-Critical"`; fi  &&
sendinput echo -e +4+[ORNGE+]----------------------------------------------------------------------+4+[NC+] `n 
return

#esc::reload
