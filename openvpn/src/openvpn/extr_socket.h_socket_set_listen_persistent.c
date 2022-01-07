
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket {int listen_persistent_queued; } ;
struct event_set {int dummy; } ;


 int EVENT_READ ;
 int event_ctl (struct event_set*,int ,int ,void*) ;
 int socket_listen_event_handle (struct link_socket*) ;

__attribute__((used)) static inline void
socket_set_listen_persistent(struct link_socket *s,
                             struct event_set *es,
                             void *arg)
{
    if (s && !s->listen_persistent_queued)
    {
        event_ctl(es, socket_listen_event_handle(s), EVENT_READ, arg);
        s->listen_persistent_queued = 1;
    }
}
