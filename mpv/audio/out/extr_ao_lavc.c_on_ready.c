
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;


 int AO_EVENT_INITIAL_UNBLOCK ;
 int ao_add_events (struct ao*,int ) ;

__attribute__((used)) static void on_ready(void *ptr)
{
    struct ao *ao = ptr;

    ao_add_events(ao, AO_EVENT_INITIAL_UNBLOCK);
}
