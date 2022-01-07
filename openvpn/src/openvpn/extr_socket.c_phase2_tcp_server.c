
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* lsa; } ;
struct link_socket {int mode; TYPE_2__ info; int sd; } ;
struct TYPE_3__ {int actual; int bind_local; } ;


 int ASSERT (int ) ;



 int SIGTERM ;
 int socket_defined (int ) ;
 int socket_do_accept (int ,int *,int) ;
 int socket_do_listen (int ,int ,int,int) ;
 int socket_listen_accept (int ,int *,char const*,int ,int,int,int volatile*) ;
 int tcp_connection_established (int *) ;

__attribute__((used)) static void
phase2_tcp_server(struct link_socket *sock, const char *remote_dynamic,
                  volatile int *signal_received)
{
    switch (sock->mode)
    {
        case 130:
            sock->sd = socket_listen_accept(sock->sd,
                                            &sock->info.lsa->actual,
                                            remote_dynamic,
                                            sock->info.lsa->bind_local,
                                            1,
                                            0,
                                            signal_received);
            break;

        case 128:
            socket_do_listen(sock->sd,
                             sock->info.lsa->bind_local,
                             1,
                             0);
            break;

        case 129:
            sock->sd = socket_do_accept(sock->sd,
                                        &sock->info.lsa->actual,
                                        0);
            if (!socket_defined(sock->sd))
            {
                *signal_received = SIGTERM;
                return;
            }
            tcp_connection_established(&sock->info.lsa->actual);
            break;

        default:
            ASSERT(0);
    }
}
