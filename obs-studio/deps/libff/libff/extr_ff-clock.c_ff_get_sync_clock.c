
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_clock {double (* sync_clock ) (int ) ;int opaque; } ;


 double stub1 (int ) ;

double ff_get_sync_clock(struct ff_clock *clock)
{
 return clock->sync_clock(clock->opaque);
}
