
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int char_width; int char_height; int text_gc; TYPE_1__* drawarea; int back_pixel; } ;
struct TYPE_6__ {int pixel; } ;
struct TYPE_5__ {int * window; } ;
typedef TYPE_2__ GdkColor ;


 int Columns ;
 int FILL_X (int) ;
 int FILL_Y (int) ;
 int TRUE ;
 int gdk_draw_rectangle (int *,int ,int ,int ,int ,int,int) ;
 int gdk_gc_set_foreground (int ,TYPE_2__*) ;
 TYPE_3__ gui ;

void
gui_mch_clear_block(int row1, int col1, int row2, int col2)
{
    GdkColor color;

    if (gui.drawarea->window == ((void*)0))
 return;

    color.pixel = gui.back_pixel;

    gdk_gc_set_foreground(gui.text_gc, &color);



    gdk_draw_rectangle(gui.drawarea->window, gui.text_gc, TRUE,
         FILL_X(col1), FILL_Y(row1),
         (col2 - col1 + 1) * gui.char_width
            + (col2 == Columns - 1),
         (row2 - row1 + 1) * gui.char_height);
}
