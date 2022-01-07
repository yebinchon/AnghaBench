
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ proto; int bind_ipv6_only; TYPE_1__* lsa; } ;
struct link_socket {TYPE_2__ info; int sd; int ctrl_sd; scalar_t__ socks_proxy; scalar_t__ bind_local; } ;
typedef int sa_family_t ;
struct TYPE_3__ {int bind_local; } ;


 scalar_t__ PROTO_UDP ;
 int socket_bind (int ,int ,int const,char*,int) ;

__attribute__((used)) static void
bind_local(struct link_socket *sock, const sa_family_t ai_family)
{

    if (sock->bind_local)
    {
        if (sock->socks_proxy && sock->info.proto == PROTO_UDP)
        {
            socket_bind(sock->ctrl_sd, sock->info.lsa->bind_local,
                        ai_family, "SOCKS", 0);
        }
        else
        {
            socket_bind(sock->sd, sock->info.lsa->bind_local,
                        ai_family,
                        "TCP/UDP", sock->info.bind_ipv6_only);
        }
    }
}
