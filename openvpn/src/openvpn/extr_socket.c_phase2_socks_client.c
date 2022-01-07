
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct signal_info {scalar_t__ signal_received; } ;
struct TYPE_10__ {TYPE_4__* lsa; } ;
struct TYPE_6__ {int dest; } ;
struct link_socket {TYPE_5__ info; int proxy_dest_port; int remote_port; int proxy_dest_host; int remote_host; TYPE_1__ socks_relay; int sd; int ctrl_sd; int socks_proxy; int server_poll_timeout; } ;
struct TYPE_7__ {int dest; } ;
struct TYPE_9__ {int * remote_list; TYPE_3__* current_remote; TYPE_2__ actual; } ;
struct TYPE_8__ {int ai_addr; } ;


 int addr_zero_host (int *) ;
 int establish_socks_proxy_udpassoc (int ,int ,int ,int *,scalar_t__*) ;
 int freeaddrinfo (int *) ;
 int get_server_poll_remaining_time (int ) ;
 int resolve_remote (struct link_socket*,int,int *,scalar_t__*) ;
 int socket_connect (int *,int ,int ,struct signal_info*) ;

__attribute__((used)) static void
phase2_socks_client(struct link_socket *sock, struct signal_info *sig_info)
{
    socket_connect(&sock->ctrl_sd,
                   sock->info.lsa->current_remote->ai_addr,
                   get_server_poll_remaining_time(sock->server_poll_timeout),
                   sig_info);

    if (sig_info->signal_received)
    {
        return;
    }

    establish_socks_proxy_udpassoc(sock->socks_proxy,
                                   sock->ctrl_sd,
                                   sock->sd,
                                   &sock->socks_relay.dest,
                                   &sig_info->signal_received);

    if (sig_info->signal_received)
    {
        return;
    }

    sock->remote_host = sock->proxy_dest_host;
    sock->remote_port = sock->proxy_dest_port;

    addr_zero_host(&sock->info.lsa->actual.dest);
    if (sock->info.lsa->remote_list)
    {
        freeaddrinfo(sock->info.lsa->remote_list);
        sock->info.lsa->current_remote = ((void*)0);
        sock->info.lsa->remote_list = ((void*)0);
    }

    resolve_remote(sock, 1, ((void*)0), &sig_info->signal_received);
}
