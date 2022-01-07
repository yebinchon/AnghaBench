
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket {unsigned int rwflags_debug; } ;
struct event_set {int dummy; } ;


 int ASSERT (int) ;
 unsigned int EVENT_READ ;
 int event_ctl (struct event_set*,int ,unsigned int,void*) ;
 int socket_event_handle (struct link_socket*) ;
 int socket_recv_queue (struct link_socket*,int ) ;
 int stream_buf_read_setup (struct link_socket*) ;

unsigned int
socket_set(struct link_socket *s,
           struct event_set *es,
           unsigned int rwflags,
           void *arg,
           unsigned int *persistent)
{
    if (s)
    {
        if ((rwflags & EVENT_READ) && !stream_buf_read_setup(s))
        {
            ASSERT(!persistent);
            rwflags &= ~EVENT_READ;
        }
        if (!persistent || *persistent != rwflags)
        {
            event_ctl(es, socket_event_handle(s), rwflags, arg);
            if (persistent)
            {
                *persistent = rwflags;
            }
        }

        s->rwflags_debug = rwflags;
    }
    return rwflags;
}
