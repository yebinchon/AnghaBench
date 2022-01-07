
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket {int * sd; int rw_handle; } ;
typedef int * event_t ;



__attribute__((used)) static inline event_t
socket_event_handle(const struct link_socket *s)
{



    return s->sd;

}
