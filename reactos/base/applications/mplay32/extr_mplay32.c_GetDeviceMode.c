
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwReturn; int dwItem; } ;
typedef TYPE_1__ MCI_STATUS_PARMS ;
typedef scalar_t__ MCIERROR ;
typedef int HWND ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int MCI_MODE_NOT_READY ;
 int MCI_STATUS ;
 int MCI_STATUS_ITEM ;
 int MCI_STATUS_MODE ;
 int MCI_WAIT ;
 int ShowMCIError (int ,scalar_t__) ;
 scalar_t__ mciSendCommand (int ,int ,int,int ) ;
 int wDeviceId ;

__attribute__((used)) static DWORD
GetDeviceMode(HWND hwnd)
{
    MCIERROR mciError;
    MCI_STATUS_PARMS mciStatus;

    mciStatus.dwItem = MCI_STATUS_MODE;
    mciError = mciSendCommand(wDeviceId, MCI_STATUS, MCI_WAIT | MCI_STATUS_ITEM, (DWORD_PTR)&mciStatus);
    if (mciError != 0)
    {
        ShowMCIError(hwnd, mciError);
        return MCI_MODE_NOT_READY;
    }

    return mciStatus.dwReturn;
}
