
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int w_height; TYPE_1__* w_scrollbars; } ;
struct TYPE_3__ {scalar_t__ id; int size; } ;
typedef scalar_t__ HWND ;


 size_t SBAR_LEFT ;
 size_t SBAR_RIGHT ;
 int SB_LINEDOWN ;
 int SB_LINEUP ;
 int SB_PAGEDOWN ;
 int SB_PAGEUP ;
 int _OnScroll (scalar_t__,scalar_t__,int ,int ) ;
 TYPE_2__* curwin ;
 int init_mouse_wheel () ;
 int mouse_scroll_lines ;

__attribute__((used)) static void
_OnMouseWheel(
    HWND hwnd,
    short zDelta)
{

    int i;
    int size;
    HWND hwndCtl;

    if (curwin->w_scrollbars[SBAR_RIGHT].id != 0)
    {
 hwndCtl = curwin->w_scrollbars[SBAR_RIGHT].id;
 size = curwin->w_scrollbars[SBAR_RIGHT].size;
    }
    else if (curwin->w_scrollbars[SBAR_LEFT].id != 0)
    {
 hwndCtl = curwin->w_scrollbars[SBAR_LEFT].id;
 size = curwin->w_scrollbars[SBAR_LEFT].size;
    }
    else
 return;

    size = curwin->w_height;
    if (mouse_scroll_lines == 0)
 init_mouse_wheel();

    if (mouse_scroll_lines > 0
     && mouse_scroll_lines < (size > 2 ? size - 2 : 1))
    {
 for (i = mouse_scroll_lines; i > 0; --i)
     _OnScroll(hwnd, hwndCtl, zDelta >= 0 ? SB_LINEUP : SB_LINEDOWN, 0);
    }
    else
 _OnScroll(hwnd, hwndCtl, zDelta >= 0 ? SB_PAGEUP : SB_PAGEDOWN, 0);
}
