
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interval {scalar_t__ future_trigger; } ;
typedef scalar_t__ interval_t ;


 int D_INTERVAL ;
 int dmsg (int ,char*,int) ;
 scalar_t__ now ;

__attribute__((used)) static inline void
interval_future_trigger(struct interval *top, interval_t wakeup)
{
    if (wakeup)
    {



        top->future_trigger = now + wakeup;
    }
}
