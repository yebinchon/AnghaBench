
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct link_socket_actual {int dest; } ;
struct TYPE_6__ {TYPE_2__* lsa; int proto; } ;
struct link_socket {TYPE_3__ info; } ;
struct buffer {int dummy; } ;
struct TYPE_4__ {int dest; } ;
struct TYPE_5__ {TYPE_1__ actual; } ;


 int ASSERT (int ) ;
 int addr_copy_sa (int *,int *) ;
 int link_socket_read_tcp (struct link_socket*,struct buffer*) ;
 int link_socket_read_udp_posix (struct link_socket*,struct buffer*,struct link_socket_actual*) ;
 int link_socket_read_udp_win32 (struct link_socket*,struct buffer*,struct link_socket_actual*) ;
 scalar_t__ proto_is_tcp (int ) ;
 scalar_t__ proto_is_udp (int ) ;

__attribute__((used)) static inline int
link_socket_read(struct link_socket *sock,
                 struct buffer *buf,
                 struct link_socket_actual *from)
{
    if (proto_is_udp(sock->info.proto))
    {
        int res;




        res = link_socket_read_udp_posix(sock, buf, from);

        return res;
    }
    else if (proto_is_tcp(sock->info.proto))
    {

        addr_copy_sa(&from->dest, &sock->info.lsa->actual.dest);
        return link_socket_read_tcp(sock, buf);
    }
    else
    {
        ASSERT(0);
        return -1;
    }
}
