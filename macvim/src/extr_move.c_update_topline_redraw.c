
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ must_redraw ;
 int update_screen (int ) ;
 int update_topline () ;

void
update_topline_redraw()
{
    update_topline();
    if (must_redraw)
 update_screen(0);
}
