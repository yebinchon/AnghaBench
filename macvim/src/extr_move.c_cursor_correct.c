
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int linenr_T ;
struct TYPE_7__ {int ml_line_count; } ;
struct TYPE_10__ {TYPE_1__ b_ml; } ;
struct TYPE_8__ {int lnum; } ;
struct TYPE_9__ {int w_topline; int w_height; int w_botline; int w_topfill; int w_filler_rows; int w_valid; TYPE_2__ w_cursor; } ;


 int VALID_CHEIGHT ;
 int VALID_CROW ;
 int VALID_TOPLINE ;
 int VALID_WCOL ;
 int VALID_WROW ;
 TYPE_6__* curbuf ;
 TYPE_3__* curwin ;
 scalar_t__ diff_check_fill (TYPE_3__*,int) ;
 int hasAnyFolding (TYPE_3__*) ;
 scalar_t__ hasFolding (int,int*,int*) ;
 int mouse_dragging ;
 int p_so ;
 scalar_t__ plines (int) ;
 scalar_t__ plines_nofill (int) ;
 int validate_botline () ;

void
cursor_correct()
{
    int above = 0;
    linenr_T topline;
    int below = 0;
    linenr_T botline;
    int above_wanted, below_wanted;
    linenr_T cln;
    int max_off;





    above_wanted = p_so;
    below_wanted = p_so;







    if (curwin->w_topline == 1)
    {
 above_wanted = 0;
 max_off = curwin->w_height / 2;
 if (below_wanted > max_off)
     below_wanted = max_off;
    }
    validate_botline();
    if (curwin->w_botline == curbuf->b_ml.ml_line_count + 1



     )
    {
 below_wanted = 0;
 max_off = (curwin->w_height - 1) / 2;
 if (above_wanted > max_off)
     above_wanted = max_off;
    }





    cln = curwin->w_cursor.lnum;
    if (cln >= curwin->w_topline + above_wanted
     && cln < curwin->w_botline - below_wanted



     )
 return;







    topline = curwin->w_topline;
    botline = curwin->w_botline - 1;





    while ((above < above_wanted || below < below_wanted) && topline < botline)
    {
 if (below < below_wanted && (below <= above || above >= above_wanted))
 {





  below += plines(botline);
     --botline;
 }
 if (above < above_wanted && (above < below || below >= below_wanted))
 {






  above += plines(topline);







     ++topline;
 }
    }
    if (topline == botline || botline == 0)
 curwin->w_cursor.lnum = topline;
    else if (topline > botline)
 curwin->w_cursor.lnum = botline;
    else
    {
 if (cln < topline && curwin->w_topline > 1)
 {
     curwin->w_cursor.lnum = topline;
     curwin->w_valid &=
       ~(VALID_WROW|VALID_WCOL|VALID_CHEIGHT|VALID_CROW);
 }
 if (cln > botline && curwin->w_botline <= curbuf->b_ml.ml_line_count)
 {
     curwin->w_cursor.lnum = botline;
     curwin->w_valid &=
       ~(VALID_WROW|VALID_WCOL|VALID_CHEIGHT|VALID_CROW);
 }
    }
    curwin->w_valid |= VALID_TOPLINE;
}
