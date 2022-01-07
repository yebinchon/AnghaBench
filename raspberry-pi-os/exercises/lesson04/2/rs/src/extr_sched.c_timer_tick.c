
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ counter; scalar_t__ preempt_count; } ;


 int _schedule () ;
 TYPE_1__* current ;
 int disable_irq () ;
 int enable_irq () ;

void timer_tick() {
  --current->counter;
  if (current->counter > 0 || current->preempt_count > 0) {
    return;
  }
  current->counter = 0;
  enable_irq();
  _schedule();
  disable_irq();
}
