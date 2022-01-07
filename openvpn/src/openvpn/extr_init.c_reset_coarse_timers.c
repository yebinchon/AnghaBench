
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ coarse_timer_wakeup; } ;
struct context {TYPE_1__ c2; } ;



void
reset_coarse_timers(struct context *c)
{
    c->c2.coarse_timer_wakeup = 0;
}
