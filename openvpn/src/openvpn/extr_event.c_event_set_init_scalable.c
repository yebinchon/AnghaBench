
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_set {int dummy; } ;


 int ASSERT (struct event_set*) ;
 int M_WARN ;
 struct event_set* ep_init (int*,unsigned int) ;
 struct event_set* event_set_init_simple (int*,unsigned int) ;
 int msg (int ,char*) ;

__attribute__((used)) static struct event_set *
event_set_init_scalable(int *maxevents, unsigned int flags)
{
    struct event_set *ret = ((void*)0);
    ret = event_set_init_simple(maxevents, flags);

    ASSERT(ret);
    return ret;
}
