
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int remove; } ;
struct TYPE_3__ {int remove; } ;


 TYPE_2__* current_global_cb ;
 TYPE_1__* current_signal_cb ;

void signal_handler_remove_current(void)
{
 if (current_signal_cb)
  current_signal_cb->remove = 1;
 else if (current_global_cb)
  current_global_cb->remove = 1;
}
