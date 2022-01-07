
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ const coarse_timer_wakeup; } ;
struct context {TYPE_1__ c2; } ;


 int check_coarse_timers_dowork (struct context*) ;
 int context_reschedule_sec (struct context*,scalar_t__ const) ;
 scalar_t__ now ;

__attribute__((used)) static inline void
check_coarse_timers(struct context *c)
{
    const time_t local_now = now;
    if (local_now >= c->c2.coarse_timer_wakeup)
    {
        check_coarse_timers_dowork(c);
    }
    else
    {
        context_reschedule_sec(c, c->c2.coarse_timer_wakeup - local_now);
    }
}
