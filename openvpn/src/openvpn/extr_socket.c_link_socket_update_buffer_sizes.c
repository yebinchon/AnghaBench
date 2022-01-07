
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sndbuf; int rcvbuf; } ;
struct link_socket {TYPE_1__ socket_buffer_sizes; int sd; } ;


 scalar_t__ socket_defined (int ) ;
 int socket_set_buffers (int ,TYPE_1__*) ;

void
link_socket_update_buffer_sizes(struct link_socket *ls, int rcvbuf, int sndbuf)
{
    if (ls && socket_defined(ls->sd))
    {
        ls->socket_buffer_sizes.sndbuf = sndbuf;
        ls->socket_buffer_sizes.rcvbuf = rcvbuf;
        socket_set_buffers(ls->sd, &ls->socket_buffer_sizes);
    }
}
