
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct signal_info {scalar_t__ signal_received; } ;
struct TYPE_7__ {TYPE_2__* lsa; } ;
struct TYPE_5__ {int residual; } ;
struct link_socket {TYPE_3__ info; int sd; int proxy_dest_port; int proxy_dest_host; scalar_t__ socks_proxy; TYPE_1__ stream_buf; int server_poll_timeout; scalar_t__ http_proxy; } ;
struct TYPE_8__ {int ai_addr; } ;
struct TYPE_6__ {TYPE_4__* current_remote; } ;


 int create_socket_tcp (TYPE_4__*) ;
 int establish_http_proxy_passthru (scalar_t__,int ,int ,int ,int ,int *,scalar_t__*) ;
 int establish_socks_proxy_passthru (scalar_t__,int ,int ,int ,scalar_t__*) ;
 int get_server_poll_remaining_time (int ) ;
 int openvpn_close_socket (int ) ;
 int socket_connect (int *,int ,int ,struct signal_info*) ;

__attribute__((used)) static void
phase2_tcp_client(struct link_socket *sock, struct signal_info *sig_info)
{
    bool proxy_retry = 0;
    do
    {
        socket_connect(&sock->sd,
                       sock->info.lsa->current_remote->ai_addr,
                       get_server_poll_remaining_time(sock->server_poll_timeout),
                       sig_info);

        if (sig_info->signal_received)
        {
            return;
        }

        if (sock->http_proxy)
        {
            proxy_retry = establish_http_proxy_passthru(sock->http_proxy,
                                                        sock->sd,
                                                        sock->proxy_dest_host,
                                                        sock->proxy_dest_port,
                                                        sock->server_poll_timeout,
                                                        &sock->stream_buf.residual,
                                                        &sig_info->signal_received);
        }
        else if (sock->socks_proxy)
        {
            establish_socks_proxy_passthru(sock->socks_proxy,
                                           sock->sd,
                                           sock->proxy_dest_host,
                                           sock->proxy_dest_port,
                                           &sig_info->signal_received);
        }
        if (proxy_retry)
        {
            openvpn_close_socket(sock->sd);
            sock->sd = create_socket_tcp(sock->info.lsa->current_remote);
        }

    } while (proxy_retry);

}
