
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_use; } ;


 int exiting ;
 scalar_t__ full_screen ;
 TYPE_1__ gui ;
 int gui_new_shellsize () ;
 int mch_new_shellsize () ;

void
ui_new_shellsize()
{
    if (full_screen && !exiting)
    {





     mch_new_shellsize();
    }
}
