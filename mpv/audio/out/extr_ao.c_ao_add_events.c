
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int wakeup_ctx; int (* wakeup_cb ) (int ) ;int events_; } ;


 int atomic_fetch_or (int *,int) ;
 int stub1 (int ) ;

void ao_add_events(struct ao *ao, int events)
{
    atomic_fetch_or(&ao->events_, events);
    ao->wakeup_cb(ao->wakeup_ctx);
}
