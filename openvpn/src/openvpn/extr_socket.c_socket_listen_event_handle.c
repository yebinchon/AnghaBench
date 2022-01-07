
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket {int * sd; int listen_handle; } ;
typedef int * event_t ;


 int FD_ACCEPT ;
 int defined_net_event_win32 (int *) ;
 int init_net_event_win32 (int *,int ,int *,int ) ;

event_t
socket_listen_event_handle(struct link_socket *s)
{







    return s->sd;

}
