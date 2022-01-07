
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_8__ {int sa_family; } ;
struct TYPE_5__ {TYPE_4__ sa; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct link_socket_actual {TYPE_2__ dest; } ;
struct TYPE_7__ {int proto; } ;
struct link_socket {int sockflags; int sd; TYPE_3__ info; } ;
struct buffer {int dummy; } ;
typedef int socklen_t ;


 int BLEN (struct buffer*) ;
 int BPTR (struct buffer*) ;
 int SF_USE_IP_PKTINFO ;
 scalar_t__ addr_defined_ipi (struct link_socket_actual*) ;
 scalar_t__ af_addr_size (int ) ;
 size_t link_socket_write_udp_posix_sendmsg (struct link_socket*,struct buffer*,struct link_socket_actual*) ;
 scalar_t__ proto_is_udp (int ) ;
 size_t sendto (int ,int ,int ,int ,struct sockaddr*,int ) ;

__attribute__((used)) static inline size_t
link_socket_write_udp_posix(struct link_socket *sock,
                            struct buffer *buf,
                            struct link_socket_actual *to)
{
    return sendto(sock->sd, BPTR(buf), BLEN(buf), 0,
                  (struct sockaddr *) &to->dest.addr.sa,
                  (socklen_t) af_addr_size(to->dest.addr.sa.sa_family));
}
