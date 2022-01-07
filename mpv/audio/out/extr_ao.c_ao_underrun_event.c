
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int events_; } ;


 int AO_EVENT_UNDERRUN ;
 int MP_WARN (struct ao*,char*) ;
 int ao_add_events (struct ao*,int) ;
 int atomic_load (int *) ;

void ao_underrun_event(struct ao *ao)
{

    if (!(atomic_load(&ao->events_) & AO_EVENT_UNDERRUN))
        MP_WARN(ao, "Device underrun detected.\n");
    ao_add_events(ao, AO_EVENT_UNDERRUN);
}
