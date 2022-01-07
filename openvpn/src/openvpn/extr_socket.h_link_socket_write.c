
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_socket_actual {int dummy; } ;
struct TYPE_2__ {int proto; } ;
struct link_socket {TYPE_1__ info; } ;
struct buffer {int dummy; } ;


 int ASSERT (int ) ;
 int link_socket_write_tcp (struct link_socket*,struct buffer*,struct link_socket_actual*) ;
 int link_socket_write_udp (struct link_socket*,struct buffer*,struct link_socket_actual*) ;
 scalar_t__ proto_is_tcp (int ) ;
 scalar_t__ proto_is_udp (int ) ;

__attribute__((used)) static inline int
link_socket_write(struct link_socket *sock,
                  struct buffer *buf,
                  struct link_socket_actual *to)
{
    if (proto_is_udp(sock->info.proto))
    {
        return link_socket_write_udp(sock, buf, to);
    }
    else if (proto_is_tcp(sock->info.proto))
    {
        return link_socket_write_tcp(sock, buf, to);
    }
    else
    {
        ASSERT(0);
        return -1;
    }
}
