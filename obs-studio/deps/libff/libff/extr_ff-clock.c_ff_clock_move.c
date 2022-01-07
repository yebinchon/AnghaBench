
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_clock {int dummy; } ;


 int ff_clock_release (struct ff_clock**) ;
 struct ff_clock* ff_clock_retain (struct ff_clock*) ;

struct ff_clock *ff_clock_move(struct ff_clock **clock)
{
 struct ff_clock *retained_clock = ff_clock_retain(*clock);
 ff_clock_release(clock);

 return retained_clock;
}
