
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openvpn_sockaddr {int dummy; } ;


 int addr_match (struct openvpn_sockaddr const*,struct openvpn_sockaddr const*) ;
 int addr_port_match (struct openvpn_sockaddr const*,struct openvpn_sockaddr const*) ;
 scalar_t__ link_socket_proto_connection_oriented (int const) ;

__attribute__((used)) static inline bool
addr_match_proto(const struct openvpn_sockaddr *a1,
                 const struct openvpn_sockaddr *a2,
                 const int proto)
{
    return link_socket_proto_connection_oriented(proto)
           ? addr_match(a1, a2)
           : addr_port_match(a1, a2);
}
