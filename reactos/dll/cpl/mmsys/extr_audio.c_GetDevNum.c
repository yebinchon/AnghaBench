
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int HWND ;
typedef int HMIXEROBJ ;
typedef int DWORD ;


 int CB_ERR ;
 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 scalar_t__ IntToPtr (scalar_t__) ;
 scalar_t__ MMSYSERR_NOERROR ;
 int SendMessage (int ,int ,int,int ) ;
 scalar_t__ mixerGetID (int ,scalar_t__*,int ) ;

__attribute__((used)) static UINT
GetDevNum(HWND hControl, DWORD Id)
{
    int iCurSel;
    UINT DevNum;

    iCurSel = SendMessage(hControl, CB_GETCURSEL, 0, 0);

    if (iCurSel == CB_ERR)
        return 0;

    DevNum = (UINT) SendMessage(hControl, CB_GETITEMDATA, iCurSel, 0);
    if (DevNum == (UINT) CB_ERR)
        return 0;

    if (mixerGetID((HMIXEROBJ)IntToPtr(DevNum), &DevNum, Id) != MMSYSERR_NOERROR)
        return 0;

    return DevNum;
}
