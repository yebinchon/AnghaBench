
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* pinstate; size_t current_state; int mask; } ;
typedef TYPE_1__ DATA ;


 int gpio_output_set (int,int,int ,int ) ;

__attribute__((used)) static __attribute__((always_inline)) inline void write_io(DATA *d)
{
  uint32_t pin_state = d->pinstate[d->current_state];

  gpio_output_set(pin_state, d->mask & ~pin_state, 0, 0);
}
