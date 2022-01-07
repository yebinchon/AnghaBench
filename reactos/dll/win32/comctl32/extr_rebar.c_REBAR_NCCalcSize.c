
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dwStyle; int hwndSelf; } ;
struct TYPE_6__ {scalar_t__ left; scalar_t__ right; scalar_t__ top; scalar_t__ bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ REBAR_INFO ;
typedef int LRESULT ;
typedef int HTHEME ;


 scalar_t__ GetSystemMetrics (int ) ;
 int GetWindowTheme (int ) ;
 int SM_CXEDGE ;
 int SM_CYEDGE ;
 int TRACE (char*,int ) ;
 int WS_BORDER ;
 void* max (scalar_t__,scalar_t__) ;
 void* min (scalar_t__,scalar_t__) ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static inline LRESULT
REBAR_NCCalcSize (const REBAR_INFO *infoPtr, RECT *rect)
{
    HTHEME theme;

    if (infoPtr->dwStyle & WS_BORDER) {
        rect->left = min(rect->left + GetSystemMetrics(SM_CXEDGE), rect->right);
        rect->right = max(rect->right - GetSystemMetrics(SM_CXEDGE), rect->left);
        rect->top = min(rect->top + GetSystemMetrics(SM_CYEDGE), rect->bottom);
        rect->bottom = max(rect->bottom - GetSystemMetrics(SM_CYEDGE), rect->top);
    }
    else if ((theme = GetWindowTheme (infoPtr->hwndSelf)))
    {




        rect->top = min(rect->top + 1, rect->bottom);

    }
    TRACE("new client=(%s)\n", wine_dbgstr_rect(rect));
    return 0;
}
