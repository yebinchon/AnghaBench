
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ lnum; } ;
struct TYPE_11__ {scalar_t__ w_topline; int w_topfill; scalar_t__ w_scbind_pos; scalar_t__ w_redr_type; TYPE_2__ w_cursor; scalar_t__ w_lines_valid; int w_buffer; int w_curswant; } ;
typedef TYPE_1__ win_T ;
typedef TYPE_2__ pos_T ;
typedef scalar_t__ linenr_T ;
struct TYPE_13__ {scalar_t__ dragged_sb; int * dragged_wp; } ;


 int FALSE ;
 int NOT_VALID ;
 scalar_t__ SBAR_NONE ;
 int VALID ;
 TYPE_1__* W_NEXT (TYPE_1__*) ;
 int coladvance (int ) ;
 int curbuf ;
 int current_scrollbar ;
 int cursor_correct () ;
 TYPE_1__* curwin ;
 int equalpos (TYPE_2__,TYPE_2__) ;
 TYPE_1__* firstwin ;
 TYPE_4__ gui ;
 scalar_t__ p_so ;
 int pum_redraw () ;
 scalar_t__ pum_visible () ;
 scalar_t__ scrollbar_value ;
 int scrolldown (long,int ) ;
 int scrollup (long,int ) ;
 int updateWindow (TYPE_1__*) ;
 int update_topline () ;
 int validate_cursor () ;

int
gui_do_scroll()
{
    win_T *wp, *save_wp;
    int i;
    long nlines;
    pos_T old_cursor;
    linenr_T old_topline;




    for (wp = firstwin, i = 0; i < current_scrollbar; wp = W_NEXT(wp), i++)
 if (wp == ((void*)0))
     break;
    if (wp == ((void*)0))

 return FALSE;




    nlines = (long)scrollbar_value + 1 - (long)wp->w_topline;
    if (nlines == 0)
 return FALSE;

    save_wp = curwin;
    old_topline = wp->w_topline;



    old_cursor = wp->w_cursor;
    curwin = wp;
    curbuf = wp->w_buffer;
    if (nlines < 0)
 scrolldown(-nlines, gui.dragged_wp == ((void*)0));
    else
 scrollup(nlines, gui.dragged_wp == ((void*)0));



    if (gui.dragged_sb == SBAR_NONE)
 gui.dragged_wp = ((void*)0);

    if (old_topline != wp->w_topline



     )
    {
 if (p_so != 0)
 {
     cursor_correct();
     update_topline();
 }
 if (old_cursor.lnum != wp->w_cursor.lnum)
     coladvance(wp->w_curswant);



    }


    validate_cursor();

    curwin = save_wp;
    curbuf = save_wp->w_buffer;





    if (old_topline != wp->w_topline
     || wp->w_redr_type != 0



     )
    {
 int type = VALID;
 if (wp->w_redr_type < type)
     wp->w_redr_type = type;
 updateWindow(wp);
    }







    return (wp == curwin && !equalpos(curwin->w_cursor, old_cursor));
}
