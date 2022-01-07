
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int sa_family; } ;
struct TYPE_12__ {TYPE_8__ sa; } ;
struct openvpn_sockaddr {TYPE_4__ addr; } ;
struct TYPE_14__ {scalar_t__ proto; TYPE_5__* lsa; int af; } ;
struct link_socket {scalar_t__ inetd; TYPE_6__ info; scalar_t__ sd; } ;
struct frame {int dummy; } ;
typedef int socklen_t ;
typedef int local_addr ;
struct TYPE_9__ {int sa_family; } ;
struct TYPE_10__ {TYPE_1__ sa; } ;
struct TYPE_11__ {TYPE_2__ addr; } ;
struct TYPE_15__ {TYPE_3__ dest; } ;
struct TYPE_13__ {int bind_local; TYPE_7__ actual; } ;


 int AF_INET ;
 int ASSERT (int) ;
 int D_SOCKET_DEBUG ;
 scalar_t__ INETD_NOWAIT ;
 int M_WARN ;
 scalar_t__ PROTO_TCP_SERVER ;
 int dmsg (int ,char*,int ,int ,int) ;
 scalar_t__ getsockname (scalar_t__,TYPE_8__*,int*) ;
 int msg (int ,char*,int ,...) ;
 int proto2ascii (scalar_t__,int,...) ;
 scalar_t__ socket_listen_accept (scalar_t__,TYPE_7__*,char const*,int ,int,int,int volatile*) ;

__attribute__((used)) static
void
phase2_inetd(struct link_socket *sock, const struct frame *frame,
             const char *remote_dynamic, volatile int *signal_received)
{
    bool remote_changed = 0;

    if (sock->info.proto == PROTO_TCP_SERVER)
    {

        sock->info.lsa->actual.dest.addr.sa.sa_family = AF_INET;
        msg(M_WARN, "inetd(%s): this OS does not provide the getsockname() "
            "function, using AF_INET",
            proto2ascii(sock->info.proto, 0));

        sock->sd =
            socket_listen_accept(sock->sd,
                                 &sock->info.lsa->actual,
                                 remote_dynamic,
                                 sock->info.lsa->bind_local,
                                 0,
                                 sock->inetd == INETD_NOWAIT,
                                 signal_received);

    }
    ASSERT(!remote_changed);
}
