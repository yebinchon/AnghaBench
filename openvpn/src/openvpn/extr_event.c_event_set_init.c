
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_set {int dummy; } ;


 unsigned int EVENT_METHOD_FAST ;
 struct event_set* event_set_init_scalable (int*,unsigned int) ;
 struct event_set* event_set_init_simple (int*,unsigned int) ;

struct event_set *
event_set_init(int *maxevents, unsigned int flags)
{
    if (flags & EVENT_METHOD_FAST)
    {
        return event_set_init_simple(maxevents, flags);
    }
    else
    {
        return event_set_init_scalable(maxevents, flags);
    }
}
