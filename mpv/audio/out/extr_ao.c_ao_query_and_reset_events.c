
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int events_; } ;


 int atomic_fetch_and (int *,unsigned int) ;

int ao_query_and_reset_events(struct ao *ao, int events)
{
    return atomic_fetch_and(&ao->events_, ~(unsigned)events) & events;
}
