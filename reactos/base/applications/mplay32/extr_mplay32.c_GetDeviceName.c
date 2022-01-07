
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wDeviceType; void* dwNumber; void* dwRetSize; int lpstrReturn; scalar_t__ dwCallback; } ;
typedef TYPE_1__ MCI_SYSINFO_PARMS ;
typedef int LPTSTR ;
typedef int DWORD_PTR ;
typedef void* DWORD ;


 int MCI_ALL_DEVICE_ID ;
 int MCI_DEVTYPE_WAVEFORM_AUDIO ;
 int MCI_SYSINFO ;
 int MCI_SYSINFO_NAME ;
 void* mciSendCommand (int ,int ,int ,int ) ;

__attribute__((used)) static DWORD
GetDeviceName(DWORD dwDeviceIndex, LPTSTR lpDeviceName, DWORD dwDeviceNameSize)
{
    MCI_SYSINFO_PARMS mciSysInfo;

    mciSysInfo.dwCallback = 0;
    mciSysInfo.lpstrReturn = lpDeviceName;
    mciSysInfo.dwRetSize = dwDeviceNameSize;
    mciSysInfo.dwNumber = dwDeviceIndex;
    mciSysInfo.wDeviceType = MCI_DEVTYPE_WAVEFORM_AUDIO;

    return mciSendCommand(MCI_ALL_DEVICE_ID, MCI_SYSINFO, MCI_SYSINFO_NAME, (DWORD_PTR)&mciSysInfo);
}
