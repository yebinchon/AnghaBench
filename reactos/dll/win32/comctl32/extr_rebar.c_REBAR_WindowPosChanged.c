
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int hwndSelf; } ;
typedef int RECT ;
typedef TYPE_1__ REBAR_INFO ;
typedef int LRESULT ;
typedef int LPARAM ;


 int DefWindowProcW (int ,int ,int ,int ) ;
 int GetWindowRect (int ,int *) ;
 int TRACE (char*,int ,int ) ;
 int WM_WINDOWPOSCHANGED ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static LRESULT
REBAR_WindowPosChanged (const REBAR_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    LRESULT ret;
    RECT rc;

    ret = DefWindowProcW(infoPtr->hwndSelf, WM_WINDOWPOSCHANGED,
    wParam, lParam);
    GetWindowRect(infoPtr->hwndSelf, &rc);
    TRACE("hwnd %p new pos (%s)\n", infoPtr->hwndSelf, wine_dbgstr_rect(&rc));
    return ret;
}
