
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ col; int lnum; } ;
typedef TYPE_2__ pos_T ;
struct TYPE_5__ {scalar_t__ coladd; scalar_t__ col; int lnum; } ;
struct TYPE_7__ {int w_set_curswant; TYPE_1__ w_cursor; } ;


 int TRUE ;
 TYPE_2__* buflist_findfpos (int ) ;
 int check_cursor_col () ;
 int check_cursor_lnum () ;
 int curbuf ;
 TYPE_3__* curwin ;
 scalar_t__ p_sol ;

void
buflist_getfpos()
{
    pos_T *fpos;

    fpos = buflist_findfpos(curbuf);

    curwin->w_cursor.lnum = fpos->lnum;
    check_cursor_lnum();

    if (p_sol)
 curwin->w_cursor.col = 0;
    else
    {
 curwin->w_cursor.col = fpos->col;
 check_cursor_col();



 curwin->w_set_curswant = TRUE;
    }
}
