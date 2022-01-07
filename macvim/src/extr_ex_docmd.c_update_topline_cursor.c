
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w_p_wrap; } ;


 int check_cursor () ;
 TYPE_1__* curwin ;
 int update_curswant () ;
 int update_topline () ;
 int validate_cursor () ;

void
update_topline_cursor()
{
    check_cursor();
    update_topline();
    if (!curwin->w_p_wrap)
 validate_cursor();
    update_curswant();
}
