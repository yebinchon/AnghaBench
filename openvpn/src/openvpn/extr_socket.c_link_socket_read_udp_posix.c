
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sa; } ;
struct TYPE_6__ {TYPE_2__ addr; } ;
struct link_socket_actual {TYPE_3__ dest; } ;
struct TYPE_4__ {scalar_t__ proto; int af; } ;
struct link_socket {int sockflags; int sd; TYPE_1__ info; } ;
struct buffer {int len; } ;
typedef scalar_t__ socklen_t ;


 int BPTR (struct buffer*) ;
 scalar_t__ PROTO_UDP ;
 int SF_USE_IP_PKTINFO ;
 int addr_zero_host (TYPE_3__*) ;
 scalar_t__ af_addr_size (int ) ;
 int bad_address_length (scalar_t__,scalar_t__) ;
 int buf_forward_capacity (struct buffer*) ;
 scalar_t__ link_socket_read_udp_posix_recvmsg (struct link_socket*,struct buffer*,struct link_socket_actual*) ;
 int recvfrom (int ,int ,int ,int ,int *,scalar_t__*) ;

int
link_socket_read_udp_posix(struct link_socket *sock,
                           struct buffer *buf,
                           struct link_socket_actual *from)
{
    socklen_t fromlen = sizeof(from->dest.addr);
    socklen_t expectedlen = af_addr_size(sock->info.af);
    addr_zero_host(&from->dest);
    buf->len = recvfrom(sock->sd, BPTR(buf), buf_forward_capacity(buf), 0,
                        &from->dest.addr.sa, &fromlen);

    if (buf->len >= 0 && expectedlen && fromlen != expectedlen)
    {
        bad_address_length(fromlen, expectedlen);
    }
    return buf->len;
}
