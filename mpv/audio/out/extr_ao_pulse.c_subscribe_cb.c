
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ao {int dummy; } ;
typedef int pa_subscription_event_type_t ;
typedef int pa_context ;


 int PA_SUBSCRIPTION_EVENT_FACILITY_MASK ;
 int PA_SUBSCRIPTION_EVENT_NEW ;
 int PA_SUBSCRIPTION_EVENT_REMOVE ;
 int PA_SUBSCRIPTION_EVENT_SINK ;
 int PA_SUBSCRIPTION_MASK_SINK ;
 int ao_hotplug_event (struct ao*) ;

__attribute__((used)) static void subscribe_cb(pa_context *c, pa_subscription_event_type_t t,
                         uint32_t idx, void *userdata)
{
    struct ao *ao = userdata;
    int type = t & PA_SUBSCRIPTION_MASK_SINK;
    int fac = t & PA_SUBSCRIPTION_EVENT_FACILITY_MASK;
    if ((type == PA_SUBSCRIPTION_EVENT_NEW || type == PA_SUBSCRIPTION_EVENT_REMOVE)
        && fac == PA_SUBSCRIPTION_EVENT_SINK)
    {
        ao_hotplug_event(ao);
    }
}
