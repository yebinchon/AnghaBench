
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_use; } ;


 int FALSE ;
 int can_update_cursor ;
 TYPE_1__ gui ;
 int gui_undraw_cursor () ;

void
gui_dont_update_cursor()
{
    if (gui.in_use)
    {

 gui_undraw_cursor();
 can_update_cursor = FALSE;
    }
}
