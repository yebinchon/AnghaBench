
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_use; scalar_t__ starting; } ;


 scalar_t__ CLEAR ;
 scalar_t__ Columns ;
 void* FALSE ;
 int * LineOffset ;
 void** LineWraps ;
 scalar_t__ NOT_VALID ;
 scalar_t__ NO_SCREEN ;
 int Rows ;
 int * ScreenLines ;
 void* TRUE ;
 int T_CL ;
 scalar_t__ can_clear (int ) ;
 void* clear_cmdline ;
 int clip_scroll_selection (int) ;
 int cmdline_row ;
 int compute_cmdrow () ;
 int firstwin ;
 TYPE_1__ gui ;
 int lineclear (int ,int) ;
 int lineinvalid (int ,int) ;
 void* mode_displayed ;
 scalar_t__ msg_col ;
 void* msg_didany ;
 void* msg_didout ;
 int msg_row ;
 scalar_t__ msg_scrolled ;
 scalar_t__ must_redraw ;
 int out_str (int ) ;
 void* redraw_cmdline ;
 void* redraw_tabline ;
 int screen_attr ;
 void* screen_cleared ;
 int screen_start () ;
 int screen_stop_highlight () ;
 scalar_t__ starting ;
 int win_rest_invalid (int ) ;

__attribute__((used)) static void
screenclear2()
{
    int i;

    if (starting == NO_SCREEN || ScreenLines == ((void*)0)



     )
 return;




 screen_attr = -1;
    screen_stop_highlight();







    for (i = 0; i < Rows; ++i)
    {
 lineclear(LineOffset[i], (int)Columns);
 LineWraps[i] = FALSE;
    }

    if (can_clear(T_CL))
    {
 out_str(T_CL);
 clear_cmdline = FALSE;
 mode_displayed = FALSE;
    }
    else
    {

 for (i = 0; i < Rows; ++i)
     lineinvalid(LineOffset[i], (int)Columns);
 clear_cmdline = TRUE;
    }

    screen_cleared = TRUE;

    win_rest_invalid(firstwin);
    redraw_cmdline = TRUE;



    if (must_redraw == CLEAR)
 must_redraw = NOT_VALID;
    compute_cmdrow();
    msg_row = cmdline_row;
    msg_col = 0;
    screen_start();
    msg_scrolled = 0;
    msg_didany = FALSE;
    msg_didout = FALSE;
}
