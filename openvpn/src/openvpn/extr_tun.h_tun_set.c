
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {unsigned int rwflags_debug; } ;
struct event_set {int dummy; } ;


 unsigned int EVENT_READ ;
 int event_ctl (struct event_set*,int ,unsigned int,void*) ;
 int tun_event_handle (struct tuntap*) ;
 int tun_read_queue (struct tuntap*,int ) ;
 scalar_t__ tuntap_defined (struct tuntap*) ;

__attribute__((used)) static inline void
tun_set(struct tuntap *tt,
        struct event_set *es,
        unsigned int rwflags,
        void *arg,
        unsigned int *persistent)
{
    if (tuntap_defined(tt))
    {

        if (!persistent || *persistent != rwflags)
        {
            event_ctl(es, tun_event_handle(tt), rwflags, arg);
            if (persistent)
            {
                *persistent = rwflags;
            }
        }






        tt->rwflags_debug = rwflags;
    }
}
