
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ w_topfill; int w_topline; int w_wrow; scalar_t__ w_width; int w_cline_height; int w_virtcol; int w_height; int w_valid; int w_botline; scalar_t__ w_p_wrap; } ;


 int TRUE ;
 int VALID_BOTLINE ;
 int VALID_CROW ;
 int VALID_WROW ;
 int W_WIDTH (TYPE_1__*) ;
 int check_topfill (TYPE_1__*,int ) ;
 TYPE_1__* curwin ;
 scalar_t__ diff_check_fill (TYPE_1__*,int) ;
 int hasFolding (int,int*,int *) ;
 int p_so ;
 scalar_t__ plines (int) ;
 scalar_t__ plines_nofill (int) ;
 int validate_cheight () ;
 int validate_cursor () ;
 int validate_virtcol () ;

void
scrolldown_clamp()
{
    int end_row;





    if (curwin->w_topline <= 1



     )
 return;

    validate_cursor();






    end_row = curwin->w_wrow;






    end_row += plines(curwin->w_topline - 1);

    if (curwin->w_p_wrap



     )
    {
 validate_cheight();
 validate_virtcol();
 end_row += curwin->w_cline_height - 1 -
     curwin->w_virtcol / W_WIDTH(curwin);
    }
    if (end_row < curwin->w_height - p_so)
    {
 --curwin->w_topline;




 --curwin->w_botline;
 curwin->w_valid &= ~(VALID_WROW|VALID_CROW|VALID_BOTLINE);
    }
}
