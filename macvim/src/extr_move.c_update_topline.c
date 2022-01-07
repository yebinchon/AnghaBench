
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {long lnum; scalar_t__ fill; scalar_t__ height; } ;
typedef TYPE_3__ lineoff_T ;
typedef long linenr_T ;
struct TYPE_10__ {long ml_line_count; } ;
struct TYPE_14__ {TYPE_1__ b_ml; } ;
struct TYPE_11__ {int lnum; } ;
struct TYPE_13__ {int w_valid; long w_topline; int w_topfill; int w_botline; int w_scbind_pos; int w_height; int w_empty_rows; scalar_t__ w_skipcol; TYPE_2__ w_cursor; scalar_t__ w_filler_rows; } ;


 int FALSE ;
 int NOT_VALID ;
 int TRUE ;
 int VALID ;
 int VALID_BOTLINE ;
 int VALID_BOTLINE_AP ;
 int VALID_TOPLINE ;
 int botline_forw (TYPE_3__*) ;
 scalar_t__ bufempty () ;
 int check_cursor_moved (TYPE_4__*) ;
 scalar_t__ check_top_offset () ;
 TYPE_7__* curbuf ;
 TYPE_4__* curwin ;
 int diff_check_fill (TYPE_4__*,int) ;
 int dollar_vcol ;
 scalar_t__ hasAnyFolding (TYPE_4__*) ;
 int hasFolding (long,long*,long*) ;
 int mouse_dragging ;
 long p_so ;
 int redraw_later (int ) ;
 int screen_valid (int) ;
 int scroll_cursor_bot (int ,int) ;
 int scroll_cursor_halfway (int) ;
 int scroll_cursor_top (int ,int) ;
 int scrolljump_value () ;
 int validate_botline () ;
 int validate_cursor () ;

void
update_topline()
{
    long line_count;
    int halfheight;
    int n;
    linenr_T old_topline;






    int check_topline = FALSE;
    int check_botline = FALSE;




    if (!screen_valid(TRUE))
 return;

    check_cursor_moved(curwin);
    if (curwin->w_valid & VALID_TOPLINE)
 return;







    old_topline = curwin->w_topline;







    if (bufempty())
    {
 if (curwin->w_topline != 1)
     redraw_later(NOT_VALID);
 curwin->w_topline = 1;
 curwin->w_botline = 2;
 curwin->w_valid |= VALID_BOTLINE|VALID_BOTLINE_AP;



    }





    else
    {
 if (curwin->w_topline > 1)
 {



     if (curwin->w_cursor.lnum < curwin->w_topline)
  check_topline = TRUE;
     else if (check_top_offset())
  check_topline = TRUE;
 }







 if (check_topline)
 {
     halfheight = curwin->w_height / 2 - 1;
     if (halfheight < 2)
  halfheight = 2;
  n = curwin->w_topline + p_so - curwin->w_cursor.lnum;




     if (n >= halfheight)
  scroll_cursor_halfway(FALSE);
     else
     {
  scroll_cursor_top(scrolljump_value(), FALSE);
  check_botline = TRUE;
     }
 }

 else
 {




     check_botline = TRUE;
 }
    }
    if (check_botline)
    {
 if (!(curwin->w_valid & VALID_BOTLINE_AP))
     validate_botline();

 if (curwin->w_botline <= curbuf->b_ml.ml_line_count)
 {
     if (curwin->w_cursor.lnum < curwin->w_botline)
     {
       if (((long)curwin->w_cursor.lnum
          >= (long)curwin->w_botline - p_so



   ))
       {
  lineoff_T loff;




  n = curwin->w_empty_rows;
  loff.lnum = curwin->w_cursor.lnum;
  loff.height = 0;
  while (loff.lnum < curwin->w_botline



   )
  {
      n += loff.height;
      if (n >= p_so)
   break;
      botline_forw(&loff);
  }
  if (n >= p_so)

      check_botline = FALSE;
       }
       else

    check_botline = FALSE;
     }
     if (check_botline)
     {
      line_count = curwin->w_cursor.lnum - curwin->w_botline
           + 1 + p_so;
  if (line_count <= curwin->w_height + 1)
      scroll_cursor_bot(scrolljump_value(), FALSE);
  else
      scroll_cursor_halfway(FALSE);
     }
 }
    }
    curwin->w_valid |= VALID_TOPLINE;




    if (curwin->w_topline != old_topline



     )
    {
 dollar_vcol = -1;
 if (curwin->w_skipcol != 0)
 {
     curwin->w_skipcol = 0;
     redraw_later(NOT_VALID);
 }
 else
     redraw_later(VALID);

 if (curwin->w_cursor.lnum == curwin->w_topline)
     validate_cursor();
    }




}
