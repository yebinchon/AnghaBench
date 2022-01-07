
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hwndToolTip; int Self; } ;
struct TYPE_4__ {int cbSize; int lpszText; scalar_t__ hinst; int uId; int hwnd; } ;
typedef TYPE_1__ TTTOOLINFOA ;
typedef TYPE_2__ STATUS_INFO ;
typedef int LRESULT ;
typedef int LPSTR ;
typedef int LPARAM ;
typedef int INT ;


 int SendMessageA (scalar_t__,int ,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 int TTM_UPDATETIPTEXTA ;

__attribute__((used)) static LRESULT
STATUSBAR_SetTipTextA (const STATUS_INFO *infoPtr, INT id, LPSTR text)
{
    TRACE("part %d: \"%s\"\n", id, text);
    if (infoPtr->hwndToolTip) {
 TTTOOLINFOA ti;
 ti.cbSize = sizeof(TTTOOLINFOA);
 ti.hwnd = infoPtr->Self;
 ti.uId = id;
 ti.hinst = 0;
 ti.lpszText = text;
 SendMessageA (infoPtr->hwndToolTip, TTM_UPDATETIPTEXTA, 0, (LPARAM)&ti);
    }

    return 0;
}
