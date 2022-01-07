
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct interval {scalar_t__ future_trigger; scalar_t__ refresh; scalar_t__ last_test_true; } ;
typedef scalar_t__ interval_t ;


 int D_INTERVAL ;
 int dmsg (int ,char*,int) ;
 int interval_earliest_wakeup (scalar_t__*,scalar_t__,int const) ;
 int now ;

__attribute__((used)) static inline void
interval_schedule_wakeup(struct interval *top, interval_t *wakeup)
{
    const time_t local_now = now;
    interval_earliest_wakeup(wakeup, top->last_test_true + top->refresh, local_now);
    interval_earliest_wakeup(wakeup, top->future_trigger, local_now);



}
