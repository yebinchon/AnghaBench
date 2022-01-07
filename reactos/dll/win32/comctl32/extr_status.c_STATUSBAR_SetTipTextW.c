
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hwndToolTip; int Self; } ;
struct TYPE_4__ {int cbSize; int lpszText; scalar_t__ hinst; int uId; int hwnd; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef TYPE_2__ STATUS_INFO ;
typedef int LRESULT ;
typedef int LPWSTR ;
typedef int LPARAM ;
typedef int INT ;


 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 int TTM_UPDATETIPTEXTW ;
 int debugstr_w (int ) ;

__attribute__((used)) static LRESULT
STATUSBAR_SetTipTextW (const STATUS_INFO *infoPtr, INT id, LPWSTR text)
{
    TRACE("part %d: \"%s\"\n", id, debugstr_w(text));
    if (infoPtr->hwndToolTip) {
 TTTOOLINFOW ti;
 ti.cbSize = sizeof(TTTOOLINFOW);
 ti.hwnd = infoPtr->Self;
 ti.uId = id;
 ti.hinst = 0;
 ti.lpszText = text;
 SendMessageW (infoPtr->hwndToolTip, TTM_UPDATETIPTEXTW, 0, (LPARAM)&ti);
    }

    return 0;
}
