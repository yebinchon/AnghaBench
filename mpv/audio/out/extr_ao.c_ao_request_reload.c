
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;


 int AO_EVENT_RELOAD ;
 int ao_add_events (struct ao*,int ) ;

void ao_request_reload(struct ao *ao)
{
    ao_add_events(ao, AO_EVENT_RELOAD);
}
