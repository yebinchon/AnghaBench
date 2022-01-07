
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int w_wcol; scalar_t__ w_p_rl; scalar_t__ w_wrow; } ;


 scalar_t__ W_WIDTH (TYPE_1__*) ;
 int W_WINCOL (TYPE_1__*) ;
 scalar_t__ W_WINROW (TYPE_1__*) ;
 TYPE_1__* curwin ;
 int gchar_cursor () ;
 scalar_t__ has_mbyte ;
 int mb_ptr2cells (int ) ;
 int ml_get_cursor () ;
 scalar_t__ redrawing () ;
 int stub1 (int ) ;
 int validate_cursor () ;
 scalar_t__ vim_isprintc (int ) ;
 int windgoto (scalar_t__,int) ;

void
setcursor()
{
    if (redrawing())
    {
 validate_cursor();
 windgoto(W_WINROW(curwin) + curwin->w_wrow,
  W_WINCOL(curwin) + (
           curwin->w_wcol));
    }
}
