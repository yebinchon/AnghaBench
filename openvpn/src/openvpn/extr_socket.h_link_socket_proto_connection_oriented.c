
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proto_is_dgram (int) ;

__attribute__((used)) static inline bool
link_socket_proto_connection_oriented(int proto)
{
    return !proto_is_dgram(proto);
}
