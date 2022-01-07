
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ x; void* y; } ;
struct TYPE_8__ {scalar_t__ right; } ;
struct TYPE_7__ {int Self; int Notify; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ POINT ;
typedef void* INT ;
typedef int BOOL ;


 int GWL_EXSTYLE ;
 int GWL_STYLE ;
 int GetClientRect (int ,TYPE_2__*) ;
 scalar_t__ GetSystemMetrics (int ) ;
 int GetWindowLongW (int ,int ) ;
 int HTBOTTOMLEFT ;
 int HTBOTTOMRIGHT ;
 int HTERROR ;
 int SBARS_SIZEGRIP ;
 int SM_CXVSCROLL ;
 int ScreenToClient (int ,TYPE_3__*) ;
 int WS_EX_LAYOUTRTL ;
 int WS_MAXIMIZE ;

__attribute__((used)) static BOOL
STATUSBAR_WMNCHitTest (const STATUS_INFO *infoPtr, INT x, INT y)
{
    if ((GetWindowLongW (infoPtr->Self, GWL_STYLE) & SBARS_SIZEGRIP)
            && !(GetWindowLongW (infoPtr->Notify, GWL_STYLE) & WS_MAXIMIZE)) {
 RECT rect;
 POINT pt;

 GetClientRect (infoPtr->Self, &rect);

 pt.x = x;
 pt.y = y;
 ScreenToClient (infoPtr->Self, &pt);

 if (pt.x >= rect.right - GetSystemMetrics(SM_CXVSCROLL))
        {
            if (GetWindowLongW( infoPtr->Self, GWL_EXSTYLE ) & WS_EX_LAYOUTRTL) return HTBOTTOMLEFT;
     else return HTBOTTOMRIGHT;
        }
    }

    return HTERROR;
}
