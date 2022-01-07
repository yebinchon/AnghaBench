
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int cy; int cx; } ;
typedef TYPE_1__* LPWINDOWPOS ;
typedef int HWND ;
typedef int BOOL ;


 int IsIconic (int ) ;
 int SWP_NOSIZE ;
 int gui_mswin_get_valid_dimensions (int ,int ,int *,int *) ;

__attribute__((used)) static BOOL
_OnWindowPosChanging(
    HWND hwnd,
    LPWINDOWPOS lpwpos)
{

    if (!IsIconic(hwnd) && !(lpwpos->flags & SWP_NOSIZE))
    {
 gui_mswin_get_valid_dimensions(lpwpos->cx, lpwpos->cy,
         &lpwpos->cx, &lpwpos->cy);
    }
    return 0;
}
