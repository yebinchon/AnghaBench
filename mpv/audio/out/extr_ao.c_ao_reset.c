
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao {int events_; TYPE_1__* api; } ;
struct TYPE_2__ {int (* reset ) (struct ao*) ;} ;


 scalar_t__ AO_EVENT_UNDERRUN ;
 int atomic_fetch_and (int *,unsigned int) ;
 int stub1 (struct ao*) ;

void ao_reset(struct ao *ao)
{
    if (ao->api->reset)
        ao->api->reset(ao);
    atomic_fetch_and(&ao->events_, ~(unsigned int)AO_EVENT_UNDERRUN);
}
