
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int fsStyle; int idCommand; } ;
struct TYPE_8__ {scalar_t__ hwndToolTip; int hwndSelf; } ;
struct TYPE_7__ {int cbSize; int lpszText; scalar_t__ hinst; int uId; int hwnd; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef TYPE_2__ TOOLBAR_INFO ;
typedef TYPE_3__ TBUTTON_INFO ;
typedef int LPARAM ;


 int BTNS_SEP ;
 int LPSTR_TEXTCALLBACKW ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int TTM_ADDTOOLW ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static void
TOOLBAR_TooltipAddTool(const TOOLBAR_INFO *infoPtr, const TBUTTON_INFO *button)
{
    if (infoPtr->hwndToolTip && !(button->fsStyle & BTNS_SEP)) {
        TTTOOLINFOW ti;

        ZeroMemory(&ti, sizeof(TTTOOLINFOW));
        ti.cbSize = sizeof (TTTOOLINFOW);
        ti.hwnd = infoPtr->hwndSelf;
        ti.uId = button->idCommand;
        ti.hinst = 0;
        ti.lpszText = LPSTR_TEXTCALLBACKW;


        SendMessageW(infoPtr->hwndToolTip, TTM_ADDTOOLW,
            0, (LPARAM)&ti);
    }
}
