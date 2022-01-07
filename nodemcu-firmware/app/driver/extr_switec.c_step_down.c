
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current_state; int current_step; } ;
typedef TYPE_1__ DATA ;


 int N_STATES ;
 int write_io (TYPE_1__*) ;

__attribute__((used)) static __attribute__((always_inline)) inline void step_down(DATA *d)
{
  d->current_step--;
  d->current_state = (d->current_state + N_STATES - 1) % N_STATES;
  write_io(d);
}
