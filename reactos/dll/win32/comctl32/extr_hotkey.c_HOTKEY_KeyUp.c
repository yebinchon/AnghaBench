
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ CurrMod; scalar_t__ hwndSelf; int hwndNotify; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_1__ HOTKEY_INFO ;
typedef int DWORD ;
typedef scalar_t__ BYTE ;


 int EN_CHANGE ;
 int GWL_STYLE ;
 int GetDlgCtrlID (scalar_t__) ;
 int GetWindowLongW (scalar_t__,int ) ;
 scalar_t__ HOTKEYF_ALT ;
 scalar_t__ HOTKEYF_CONTROL ;
 scalar_t__ HOTKEYF_SHIFT ;
 int InvalidateRect (scalar_t__,int *,int ) ;
 int MAKEWPARAM (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int) ;
 int TRUE ;



 int WM_COMMAND ;
 int WS_DISABLED ;

__attribute__((used)) static LRESULT
HOTKEY_KeyUp (HOTKEY_INFO *infoPtr, DWORD key)
{
    BYTE bOldMod;

    if (GetWindowLongW(infoPtr->hwndSelf, GWL_STYLE) & WS_DISABLED)
        return 0;

    TRACE("() Key: %d\n", key);

    bOldMod = infoPtr->CurrMod;

    switch (key)
    {
 case 128:
     infoPtr->CurrMod &= ~HOTKEYF_SHIFT;
     break;
 case 130:
     infoPtr->CurrMod &= ~HOTKEYF_CONTROL;
     break;
 case 129:
     infoPtr->CurrMod &= ~HOTKEYF_ALT;
     break;
 default:
     return 1;
    }

    if (bOldMod != infoPtr->CurrMod)
    {
        InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);


        SendMessageW(infoPtr->hwndNotify, WM_COMMAND,
            MAKEWPARAM(GetDlgCtrlID(infoPtr->hwndSelf), EN_CHANGE),
            (LPARAM)infoPtr->hwndSelf);
    }

    return 0;
}
