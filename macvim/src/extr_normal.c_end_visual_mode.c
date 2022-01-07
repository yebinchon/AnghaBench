
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ owned; scalar_t__ available; } ;
struct TYPE_6__ {scalar_t__ coladd; } ;
struct TYPE_7__ {int vi_curswant; TYPE_1__ vi_end; int vi_start; void* vi_mode; } ;
struct TYPE_9__ {void* b_visual_mode_eval; TYPE_2__ b_visual; } ;
struct TYPE_8__ {TYPE_1__ w_cursor; int w_curswant; } ;


 int FALSE ;
 int TRUE ;
 int VIsual ;
 int VIsual_active ;
 void* VIsual_mode ;
 int adjust_cursor_eol () ;
 int clear_cmdline ;
 int clear_showcmd () ;
 int clip_auto_select () ;
 TYPE_5__ clip_star ;
 TYPE_4__* curbuf ;
 TYPE_3__* curwin ;
 scalar_t__ mode_displayed ;
 scalar_t__ mouse_dragging ;
 int setmouse () ;
 int virtual_active () ;

void
end_visual_mode()
{
    VIsual_active = FALSE;






    curbuf->b_visual.vi_mode = VIsual_mode;
    curbuf->b_visual.vi_start = VIsual;
    curbuf->b_visual.vi_end = curwin->w_cursor;
    curbuf->b_visual.vi_curswant = curwin->w_curswant;
    if (mode_displayed)
 clear_cmdline = TRUE;





    adjust_cursor_eol();
}
