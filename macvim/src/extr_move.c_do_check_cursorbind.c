
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* coladd; void* col; int lnum; } ;
struct TYPE_6__ {int w_set_curswant; void* w_redr_status; int w_p_scb; void* w_curswant; TYPE_1__ w_cursor; scalar_t__ w_p_diff; scalar_t__ w_p_crb; int * w_buffer; struct TYPE_6__* w_next; } ;
typedef TYPE_2__ win_T ;
typedef int linenr_T ;
typedef void* colnr_T ;
typedef int buf_T ;


 void* TRUE ;
 int VALID ;
 int VIsual_active ;
 int VIsual_select ;
 int check_cursor () ;
 int * curbuf ;
 TYPE_2__* curwin ;
 int diff_get_corresponding_line (int *,int ,int *,int ) ;
 TYPE_2__* firstwin ;
 scalar_t__ has_mbyte ;
 int mb_adjust_cursor () ;
 int redraw_later (int ) ;
 int restart_edit ;
 int update_topline () ;

void
do_check_cursorbind()
{
    linenr_T line = curwin->w_cursor.lnum;
    colnr_T col = curwin->w_cursor.col;



    colnr_T curswant = curwin->w_curswant;
    int set_curswant = curwin->w_set_curswant;
    win_T *old_curwin = curwin;
    buf_T *old_curbuf = curbuf;
    int restart_edit_save;
    int old_VIsual_select = VIsual_select;
    int old_VIsual_active = VIsual_active;




    VIsual_select = VIsual_active = 0;
    for (curwin = firstwin; curwin; curwin = curwin->w_next)
    {
 curbuf = curwin->w_buffer;

 if (curwin != old_curwin && curwin->w_p_crb)
 {
  curwin->w_cursor.lnum = line;
     curwin->w_cursor.col = col;



     curwin->w_curswant = curswant;
     curwin->w_set_curswant = set_curswant;



     restart_edit_save = restart_edit;
     restart_edit = TRUE;
     check_cursor();
     restart_edit = restart_edit_save;





     redraw_later(VALID);


     if (!curwin->w_p_scb)
  update_topline();



 }
    }




    VIsual_select = old_VIsual_select;
    VIsual_active = old_VIsual_active;
    curwin = old_curwin;
    curbuf = old_curbuf;
}
