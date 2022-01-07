
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_4__ {scalar_t__ HotKey; scalar_t__ CurrMod; scalar_t__ InvMod; int ScanCode; scalar_t__ hwndSelf; int hwndNotify; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_1__ HOTKEY_INFO ;
typedef int DWORD ;
typedef scalar_t__ BYTE ;


 int DefWindowProcW (scalar_t__,int ,int,int) ;
 int EN_CHANGE ;
 int GWL_STYLE ;
 int GetDlgCtrlID (scalar_t__) ;
 int GetWindowLongW (scalar_t__,int ) ;
 scalar_t__ HOTKEYF_ALT ;
 scalar_t__ HOTKEYF_CONTROL ;
 scalar_t__ HOTKEYF_SHIFT ;
 int HOTKEY_IsCombInv (TYPE_1__*) ;
 int InvalidateRect (scalar_t__,int *,int ) ;
 void* MAKEWORD (int,scalar_t__) ;
 int MAKEWPARAM (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int) ;
 int TRUE ;
 int WM_COMMAND ;
 int WM_KEYDOWN ;
 int WS_DISABLED ;

__attribute__((used)) static LRESULT
HOTKEY_KeyDown (HOTKEY_INFO *infoPtr, DWORD key, DWORD flags)
{
    WORD wOldHotKey;
    BYTE bOldMod;

    if (GetWindowLongW(infoPtr->hwndSelf, GWL_STYLE) & WS_DISABLED)
        return 0;

    TRACE("() Key: %d\n", key);

    wOldHotKey = infoPtr->HotKey;
    bOldMod = infoPtr->CurrMod;


    infoPtr->HotKey = 0;

    switch (key)
    {
 case 131:
 case 128:
 case 129:
 case 134:
 case 133:
 case 136:
     InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);
     return DefWindowProcW (infoPtr->hwndSelf, WM_KEYDOWN, key, flags);

 case 130:
     infoPtr->CurrMod |= HOTKEYF_SHIFT;
     break;
 case 135:
     infoPtr->CurrMod |= HOTKEYF_CONTROL;
     break;
 case 132:
     infoPtr->CurrMod |= HOTKEYF_ALT;
     break;

 default:
     if(HOTKEY_IsCombInv(infoPtr))
         infoPtr->HotKey = MAKEWORD(key, infoPtr->InvMod);
     else
         infoPtr->HotKey = MAKEWORD(key, infoPtr->CurrMod);
     infoPtr->ScanCode = flags;
     break;
    }

    if ((wOldHotKey != infoPtr->HotKey) || (bOldMod != infoPtr->CurrMod))
    {
        InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);


        SendMessageW(infoPtr->hwndNotify, WM_COMMAND,
            MAKEWPARAM(GetDlgCtrlID(infoPtr->hwndSelf), EN_CHANGE),
            (LPARAM)infoPtr->hwndSelf);
    }

    return 0;
}
