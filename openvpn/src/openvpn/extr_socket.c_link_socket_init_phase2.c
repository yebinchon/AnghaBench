
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ af; scalar_t__ proto; TYPE_4__* lsa; } ;
struct signal_info {int signal_received; char* remote_host; int sd; TYPE_5__ info; scalar_t__ socks_proxy; scalar_t__ bind_local; scalar_t__ inetd; scalar_t__ resolve_retry_seconds; } ;
struct link_socket {int signal_received; char* remote_host; int sd; TYPE_5__ info; scalar_t__ socks_proxy; scalar_t__ bind_local; scalar_t__ inetd; scalar_t__ resolve_retry_seconds; } ;
struct frame {int dummy; } ;
struct TYPE_12__ {scalar_t__ ai_family; } ;
struct TYPE_7__ {int sa; } ;
struct TYPE_8__ {TYPE_1__ addr; } ;
struct TYPE_9__ {TYPE_2__ dest; } ;
struct TYPE_10__ {TYPE_3__ actual; TYPE_6__* bind_local; TYPE_6__* current_remote; } ;


 scalar_t__ AF_UNSPEC ;
 int ASSERT (struct signal_info*) ;
 int M_WARN ;
 scalar_t__ PROTO_TCP_CLIENT ;
 scalar_t__ PROTO_TCP_SERVER ;
 scalar_t__ PROTO_UDP ;
 int SIGUSR1 ;
 int SOCKET_UNDEFINED ;
 int addr_family_name (scalar_t__) ;
 int create_socket (struct signal_info*,TYPE_6__*) ;
 int linksock_print_addr (struct signal_info*) ;
 int msg (int ,char*,...) ;
 int phase2_inetd (struct signal_info*,struct frame const*,char const*,int*) ;
 int phase2_set_socket_flags (struct signal_info*) ;
 int phase2_socks_client (struct signal_info*,struct signal_info*) ;
 int phase2_tcp_client (struct signal_info*,struct signal_info*) ;
 int phase2_tcp_server (struct signal_info*,char const*,int*) ;
 int protect_fd_nonlocal (int,int *) ;
 int resolve_remote (struct signal_info*,int,char const**,int*) ;
 int socket_frame_init (struct frame const*,struct signal_info*) ;

void
link_socket_init_phase2(struct link_socket *sock,
                        const struct frame *frame,
                        struct signal_info *sig_info)
{
    const char *remote_dynamic = ((void*)0);
    int sig_save = 0;

    ASSERT(sock);
    ASSERT(sig_info);

    if (sig_info->signal_received)
    {
        sig_save = sig_info->signal_received;
        sig_info->signal_received = 0;
    }


    socket_frame_init(frame, sock);






    if (sock->resolve_retry_seconds)
    {
        remote_dynamic = sock->remote_host;
    }


    if (sock->inetd)
    {
        phase2_inetd(sock, frame, remote_dynamic, &sig_info->signal_received);
        if (sig_info->signal_received)
        {
            goto done;
        }

    }
    else
    {

        resolve_remote(sock, 2, &remote_dynamic, &sig_info->signal_received);


        if (sock->info.lsa->current_remote)
        {
            create_socket(sock, sock->info.lsa->current_remote);
        }


        if (sock->sd == SOCKET_UNDEFINED)
        {



            if (sock->bind_local && !sock->remote_host && sock->info.lsa->bind_local)
            {


                if (sock->info.af == AF_UNSPEC)
                {
                    msg(M_WARN, "Could not determine IPv4/IPv6 protocol. Using %s",
                        addr_family_name(sock->info.lsa->bind_local->ai_family));
                    sock->info.af = sock->info.lsa->bind_local->ai_family;
                }

                create_socket(sock, sock->info.lsa->bind_local);
            }
        }


        if (sock->sd == SOCKET_UNDEFINED)
        {
            msg(M_WARN, "Could not determine IPv4/IPv6 protocol");
            sig_info->signal_received = SIGUSR1;
            goto done;
        }

        if (sig_info->signal_received)
        {
            goto done;
        }

        if (sock->info.proto == PROTO_TCP_SERVER)
        {
            phase2_tcp_server(sock, remote_dynamic,
                              &sig_info->signal_received);
        }
        else if (sock->info.proto == PROTO_TCP_CLIENT)
        {
            phase2_tcp_client(sock, sig_info);

        }
        else if (sock->info.proto == PROTO_UDP && sock->socks_proxy)
        {
            phase2_socks_client(sock, sig_info);
        }






        if (sig_info->signal_received)
        {
            goto done;
        }
    }

    phase2_set_socket_flags(sock);
    linksock_print_addr(sock);

done:
    if (sig_save)
    {
        if (!sig_info->signal_received)
        {
            sig_info->signal_received = sig_save;
        }
    }
}
