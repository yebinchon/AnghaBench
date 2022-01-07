
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dwCallback; } ;
struct TYPE_5__ {scalar_t__ dwReturn; int dwItem; scalar_t__ dwCallback; } ;
struct TYPE_4__ {scalar_t__ wDeviceID; int * lpstrAlias; int * lpstrElementName; int lpstrDeviceType; scalar_t__ dwCallback; } ;
typedef TYPE_1__ MCI_OPEN_PARMS ;
typedef TYPE_2__ MCI_GETDEVCAPS_PARMS ;
typedef TYPE_3__ MCI_GENERIC_PARMS ;
typedef scalar_t__ MCIERROR ;
typedef int LPTSTR ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int FALSE ;
 int MCI_CLOSE ;
 int MCI_GETDEVCAPS ;
 int MCI_GETDEVCAPS_ITEM ;
 int MCI_GETDEVCAPS_USES_FILES ;
 int MCI_OPEN ;
 int MCI_OPEN_TYPE ;
 int MCI_WAIT ;
 scalar_t__ mciSendCommand (scalar_t__,int ,int,int ) ;

__attribute__((used)) static BOOL
DeviceUsesFiles(LPTSTR lpDeviceName)
{
    MCIERROR mciError;
    MCI_OPEN_PARMS mciOpen;
    MCI_GETDEVCAPS_PARMS mciDevCaps;
    MCI_GENERIC_PARMS mciGeneric;

    mciOpen.dwCallback = 0;
    mciOpen.wDeviceID = 0;
    mciOpen.lpstrDeviceType = lpDeviceName;
    mciOpen.lpstrElementName = ((void*)0);
    mciOpen.lpstrAlias = ((void*)0);

    mciError = mciSendCommand(0, MCI_OPEN, MCI_OPEN_TYPE | MCI_WAIT, (DWORD_PTR)&mciOpen);
    if (mciError != 0)
        return FALSE;

    mciDevCaps.dwCallback = 0;
    mciDevCaps.dwReturn = 0;
    mciDevCaps.dwItem = MCI_GETDEVCAPS_USES_FILES;

    mciError = mciSendCommand(mciOpen.wDeviceID, MCI_GETDEVCAPS, MCI_WAIT | MCI_GETDEVCAPS_ITEM, (DWORD_PTR)&mciDevCaps);
    if (mciError != 0)
        return FALSE;

    mciGeneric.dwCallback = 0;
    mciSendCommand(mciOpen.wDeviceID, MCI_CLOSE, MCI_WAIT, (DWORD_PTR)&mciGeneric);

    return (BOOL)mciDevCaps.dwReturn;
}
