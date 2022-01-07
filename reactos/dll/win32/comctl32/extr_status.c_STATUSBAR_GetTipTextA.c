
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hwndToolTip; int Self; } ;
struct TYPE_4__ {int cbSize; char* lpszText; int uId; int hwnd; } ;
typedef TYPE_1__ TTTOOLINFOA ;
typedef TYPE_2__ STATUS_INFO ;
typedef int LRESULT ;
typedef scalar_t__ LPSTR ;
typedef int LPARAM ;
typedef int INT ;
typedef char CHAR ;


 int INFOTIPSIZE ;
 int SendMessageA (scalar_t__,int ,int ,int ) ;
 int TRACE (char*) ;
 int TTM_GETTEXTA ;
 int lstrcpynA (scalar_t__,char*,int ) ;

__attribute__((used)) static LRESULT
STATUSBAR_GetTipTextA (const STATUS_INFO *infoPtr, INT id, LPSTR tip, INT size)
{
    TRACE("\n");
    if (tip) {
        CHAR buf[INFOTIPSIZE];
        buf[0]='\0';

        if (infoPtr->hwndToolTip) {
            TTTOOLINFOA ti;
            ti.cbSize = sizeof(TTTOOLINFOA);
            ti.hwnd = infoPtr->Self;
            ti.uId = id;
            ti.lpszText = buf;
            SendMessageA (infoPtr->hwndToolTip, TTM_GETTEXTA, 0, (LPARAM)&ti);
        }
        lstrcpynA (tip, buf, size);
    }
    return 0;
}
