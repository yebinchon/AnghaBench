
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proto; } ;
struct link_socket {TYPE_1__ info; } ;


 int link_socket_proto_connection_oriented (int ) ;

__attribute__((used)) static inline bool
link_socket_connection_oriented(const struct link_socket *sock)
{
    if (sock)
    {
        return link_socket_proto_connection_oriented(sock->info.proto);
    }
    else
    {
        return 0;
    }
}
