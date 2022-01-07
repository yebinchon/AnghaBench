
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ linenr_T ;
struct TYPE_3__ {scalar_t__ lnum; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;


 int changed_cline_bef_curs () ;
 int check_cursor () ;
 int check_cursor_col () ;
 TYPE_2__* curwin ;
 int invalidate_botline () ;

__attribute__((used)) static void
py_fix_cursor(linenr_T lo, linenr_T hi, linenr_T extra)
{
    if (curwin->w_cursor.lnum >= lo)
    {


 if (curwin->w_cursor.lnum >= hi)
 {
     curwin->w_cursor.lnum += extra;
     check_cursor_col();
 }
 else if (extra < 0)
 {
     curwin->w_cursor.lnum = lo;
     check_cursor();
 }
 else
     check_cursor_col();
 changed_cline_bef_curs();
    }
    invalidate_botline();
}
