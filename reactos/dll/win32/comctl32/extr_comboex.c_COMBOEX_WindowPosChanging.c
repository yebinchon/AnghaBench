
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ cy; int flags; scalar_t__ cx; int y; int x; } ;
typedef TYPE_1__ WINDOWPOS ;
struct TYPE_12__ {int hwndCombo; scalar_t__ hwndEdit; int hwndSelf; } ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_2__ RECT ;
typedef int LRESULT ;
typedef scalar_t__ INT ;
typedef TYPE_3__ COMBOEX_INFO ;


 int COMBOEX_AdjustEditPos (TYPE_3__ const*) ;
 int GetClientRect (int ,TYPE_2__*) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 int HWND_TOP ;
 int InvalidateRect (int ,int ,int ) ;
 int SWP_NOACTIVATE ;
 int SetWindowPos (int ,int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 int TRACE (char*,int ,scalar_t__,...) ;
 int TRUE ;
 int wine_dbgstr_rect (TYPE_2__*) ;

__attribute__((used)) static LRESULT COMBOEX_WindowPosChanging (const COMBOEX_INFO *infoPtr, WINDOWPOS *wp)
{
    RECT cbx_wrect, cbx_crect, cb_wrect;
    INT width, height;

    GetWindowRect (infoPtr->hwndSelf, &cbx_wrect);
    GetClientRect (infoPtr->hwndSelf, &cbx_crect);
    GetWindowRect (infoPtr->hwndCombo, &cb_wrect);


    width = wp->cx
     + (cbx_wrect.right-cbx_wrect.left)
            - (cbx_crect.right-cbx_crect.left);

    TRACE("winpos=(%d,%d %dx%d) flags=0x%08x\n",
   wp->x, wp->y, wp->cx, wp->cy, wp->flags);
    TRACE("EX window=(%s), client=(%s)\n",
          wine_dbgstr_rect(&cbx_wrect), wine_dbgstr_rect(&cbx_crect));
    TRACE("CB window=(%s), EX setting=(0,0)-(%d,%d)\n",
          wine_dbgstr_rect(&cbx_wrect), width, cb_wrect.bottom-cb_wrect.top);

    if (width) SetWindowPos (infoPtr->hwndCombo, HWND_TOP, 0, 0,
        width,
        cb_wrect.bottom-cb_wrect.top,
        SWP_NOACTIVATE);

    GetWindowRect (infoPtr->hwndCombo, &cb_wrect);


    height = (cb_wrect.bottom-cb_wrect.top)
      + (cbx_wrect.bottom-cbx_wrect.top)
             - (cbx_crect.bottom-cbx_crect.top);
    wp->cy = height;
    if (infoPtr->hwndEdit) {
 COMBOEX_AdjustEditPos (infoPtr);
 InvalidateRect (infoPtr->hwndCombo, 0, TRUE);
    }

    return 0;
}
