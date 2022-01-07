
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ w_set_curswant; int w_virtcol; int w_curswant; } ;


 scalar_t__ FALSE ;
 TYPE_1__* curwin ;
 int validate_virtcol () ;

void
update_curswant()
{
    if (curwin->w_set_curswant)
    {
 validate_virtcol();
 curwin->w_curswant = curwin->w_virtcol;
 curwin->w_set_curswant = FALSE;
    }
}
