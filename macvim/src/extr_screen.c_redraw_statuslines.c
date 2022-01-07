
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ w_redr_status; struct TYPE_4__* w_next; } ;
typedef TYPE_1__ win_T ;


 int draw_tabline () ;
 TYPE_1__* firstwin ;
 scalar_t__ redraw_tabline ;
 int win_redr_status (TYPE_1__*) ;

void
redraw_statuslines()
{
    win_T *wp;

    for (wp = firstwin; wp; wp = wp->w_next)
 if (wp->w_redr_status)
     win_redr_status(wp);
    if (redraw_tabline)
 draw_tabline();
}
