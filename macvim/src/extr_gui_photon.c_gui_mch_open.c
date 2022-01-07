
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vimWindow; int back_pixel; int def_back_pixel; int norm_pixel; int def_norm_pixel; } ;


 int FAIL ;
 int OK ;
 int Pg_BLACK ;
 int Pg_WHITE ;
 scalar_t__ PtRealizeWidget (int ) ;
 TYPE_1__ gui ;
 int gui_check_colors () ;
 int gui_mch_set_winpos (int,int) ;
 int gui_win_x ;
 int gui_win_y ;
 int highlight_gui_started () ;
 int set_normal_colors () ;

int
gui_mch_open(void)
{
    gui.norm_pixel = Pg_BLACK;
    gui.back_pixel = Pg_WHITE;

    set_normal_colors();

    gui_check_colors();
    gui.def_norm_pixel = gui.norm_pixel;
    gui.def_back_pixel = gui.back_pixel;

    highlight_gui_started();

    if (gui_win_x != -1 && gui_win_y != -1)
 gui_mch_set_winpos(gui_win_x, gui_win_y);

    return (PtRealizeWidget(gui.vimWindow) == 0) ? OK : FAIL;
}
