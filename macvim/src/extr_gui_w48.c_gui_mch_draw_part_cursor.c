
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int guicolor_T ;
struct TYPE_5__ {scalar_t__ char_height; int row; scalar_t__ col; } ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int HBRUSH ;


 scalar_t__ CURSOR_BAR_RIGHT ;
 int CreateSolidBrush (int ) ;
 int DeleteBrush (int ) ;
 scalar_t__ FILL_X (scalar_t__) ;
 scalar_t__ FILL_Y (int ) ;
 int FillRect (int ,TYPE_1__*,int ) ;
 TYPE_2__ gui ;
 int s_hdc ;

void
gui_mch_draw_part_cursor(
    int w,
    int h,
    guicolor_T color)
{
    HBRUSH hbr;
    RECT rc;




    rc.left =




      FILL_X(gui.col);
    rc.top = FILL_Y(gui.row) + gui.char_height - h;
    rc.right = rc.left + w;
    rc.bottom = rc.top + h;
    hbr = CreateSolidBrush(color);
    FillRect(s_hdc, &rc, hbr);
    DeleteBrush(hbr);
}
