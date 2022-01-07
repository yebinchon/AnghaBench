
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openvpn_sockaddr {int dummy; } ;
struct addrinfo {int dummy; } ;


 int addrlist_match (struct openvpn_sockaddr const*,struct addrinfo*) ;
 int addrlist_port_match (struct openvpn_sockaddr const*,struct addrinfo*) ;
 scalar_t__ link_socket_proto_connection_oriented (int const) ;

__attribute__((used)) static inline bool
addrlist_match_proto(const struct openvpn_sockaddr *a1,
                     struct addrinfo *addr_list,
                     const int proto)
{
    return link_socket_proto_connection_oriented(proto)
           ? addrlist_match(a1, addr_list)
           : addrlist_port_match(a1, addr_list);
}
