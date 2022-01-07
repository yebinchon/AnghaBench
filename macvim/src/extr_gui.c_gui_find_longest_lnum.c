
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ linenr_T ;
typedef long colnr_T ;
struct TYPE_5__ {scalar_t__ ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
struct TYPE_6__ {scalar_t__ lnum; } ;
struct TYPE_7__ {scalar_t__ w_topline; scalar_t__ w_botline; TYPE_2__ w_cursor; } ;


 int GO_HORSCROLL ;
 scalar_t__ abs (int) ;
 TYPE_4__* curbuf ;
 TYPE_3__* curwin ;
 int p_go ;
 long scroll_line_len (scalar_t__) ;
 int * vim_strchr (int ,int ) ;

__attribute__((used)) static linenr_T
gui_find_longest_lnum()
{
    linenr_T ret = 0;




    if (vim_strchr(p_go, GO_HORSCROLL) == ((void*)0)
     && curwin->w_topline <= curwin->w_cursor.lnum
     && curwin->w_botline > curwin->w_cursor.lnum
     && curwin->w_botline <= curbuf->b_ml.ml_line_count + 1)
    {
 linenr_T lnum;
 colnr_T n;
 long max = 0;




 for (lnum = curwin->w_topline; lnum < curwin->w_botline; ++lnum)
 {
     n = scroll_line_len(lnum);
     if (n > (colnr_T)max)
     {
  max = n;
  ret = lnum;
     }
     else if (n == (colnr_T)max
      && abs((int)(lnum - curwin->w_cursor.lnum))
         < abs((int)(ret - curwin->w_cursor.lnum)))
  ret = lnum;
 }
    }
    else

 ret = curwin->w_cursor.lnum;

    return ret;
}
