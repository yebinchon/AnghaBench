
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_use; } ;


 int TRUE ;
 TYPE_1__ gui ;
 int gui_init_which_components (int *) ;
 int gui_update_scrollbars (int ) ;
 int need_mouse_correct ;
 int out_flush () ;
 scalar_t__ starting ;

void
gui_may_update_scrollbars()
{
    if (gui.in_use && starting == 0)
    {
 out_flush();
 gui_init_which_components(((void*)0));
 gui_update_scrollbars(TRUE);
    }
    need_mouse_correct = TRUE;
}
