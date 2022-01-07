
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ml_line_count; } ;
struct TYPE_7__ {TYPE_1__ b_ml; } ;
struct TYPE_6__ {scalar_t__ w_topline; scalar_t__ w_topfill; int w_wrow; scalar_t__ w_width; int w_virtcol; int w_valid; int w_botline; scalar_t__ w_p_wrap; } ;


 int VALID_BOTLINE ;
 int VALID_CROW ;
 int VALID_WROW ;
 int W_WIDTH (TYPE_2__*) ;
 TYPE_3__* curbuf ;
 TYPE_2__* curwin ;
 int hasFolding (scalar_t__,int *,scalar_t__*) ;
 int p_so ;
 int plines (scalar_t__) ;
 int plines_nofill (scalar_t__) ;
 int validate_cursor () ;
 int validate_virtcol () ;

void
scrollup_clamp()
{
    int start_row;

    if (curwin->w_topline == curbuf->b_ml.ml_line_count



     )
 return;

    validate_cursor();
    start_row = curwin->w_wrow - plines(curwin->w_topline);

    if (curwin->w_p_wrap



     )
    {
 validate_virtcol();
 start_row -= curwin->w_virtcol / W_WIDTH(curwin);
    }
    if (start_row >= p_so)
    {





 {



     ++curwin->w_topline;
 }
 ++curwin->w_botline;
 curwin->w_valid &= ~(VALID_WROW|VALID_CROW|VALID_BOTLINE);
    }
}
