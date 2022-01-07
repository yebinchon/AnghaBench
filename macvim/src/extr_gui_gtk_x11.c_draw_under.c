
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int text_gc; TYPE_1__* drawarea; int fgcolor; int spcolor; } ;
struct TYPE_3__ {int window; } ;


 int DRAW_UNDERC ;
 int DRAW_UNDERL ;
 int FILL_X (int) ;
 int FILL_Y (int) ;
 int gdk_draw_line (int ,int ,int,int,int,int) ;
 int gdk_draw_point (int ,int ,int,int) ;
 int gdk_gc_set_foreground (int ,int ) ;
 TYPE_2__ gui ;
 int p_linespace ;

__attribute__((used)) static void
draw_under(int flags, int row, int col, int cells)
{
    int i;
    int offset;
    static const int val[8] = {1, 0, 0, 0, 1, 2, 2, 2 };
    int y = FILL_Y(row + 1) - 1;


    if (flags & DRAW_UNDERC)
    {
 gdk_gc_set_foreground(gui.text_gc, gui.spcolor);
 for (i = FILL_X(col); i < FILL_X(col + cells); ++i)
 {
     offset = val[i % 8];
     gdk_draw_point(gui.drawarea->window, gui.text_gc, i, y - offset);
 }
 gdk_gc_set_foreground(gui.text_gc, gui.fgcolor);
    }


    if (flags & DRAW_UNDERL)
    {


 if (p_linespace > 1)
     y -= p_linespace - 1;
 gdk_draw_line(gui.drawarea->window, gui.text_gc,
        FILL_X(col), y,
        FILL_X(col + cells) - 1, y);
    }
}
