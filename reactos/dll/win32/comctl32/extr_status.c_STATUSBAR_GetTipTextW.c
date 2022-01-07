
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_5__ {scalar_t__ hwndToolTip; int Self; } ;
struct TYPE_4__ {int cbSize; scalar_t__* lpszText; int uId; int hwnd; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef TYPE_2__ STATUS_INFO ;
typedef int LRESULT ;
typedef scalar_t__ LPWSTR ;
typedef int LPARAM ;
typedef int INT ;


 int INFOTIPSIZE ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int TRACE (char*) ;
 int TTM_GETTEXTW ;
 int lstrcpynW (scalar_t__,scalar_t__*,int ) ;

__attribute__((used)) static LRESULT
STATUSBAR_GetTipTextW (const STATUS_INFO *infoPtr, INT id, LPWSTR tip, INT size)
{
    TRACE("\n");
    if (tip) {
        WCHAR buf[INFOTIPSIZE];
        buf[0]=0;

 if (infoPtr->hwndToolTip) {
     TTTOOLINFOW ti;
     ti.cbSize = sizeof(TTTOOLINFOW);
     ti.hwnd = infoPtr->Self;
     ti.uId = id;
            ti.lpszText = buf;
     SendMessageW(infoPtr->hwndToolTip, TTM_GETTEXTW, 0, (LPARAM)&ti);
 }
 lstrcpynW(tip, buf, size);
    }

    return 0;
}
