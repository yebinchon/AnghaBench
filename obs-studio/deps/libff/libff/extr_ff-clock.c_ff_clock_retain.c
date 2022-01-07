
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_clock {int retain; } ;


 int ff_atomic_inc_long (int *) ;

struct ff_clock *ff_clock_retain(struct ff_clock *clock)
{
 ff_atomic_inc_long(&clock->retain);

 return clock;
}
