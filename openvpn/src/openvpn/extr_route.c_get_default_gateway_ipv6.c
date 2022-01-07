
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_ipv6_gateway_info {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int openvpn_net_ctx_t ;


 int CLEAR (struct route_ipv6_gateway_info) ;
 int D_ROUTE ;
 int msg (int ,char*) ;

void
get_default_gateway_ipv6(struct route_ipv6_gateway_info *rgi6,
                         const struct in6_addr *dest, openvpn_net_ctx_t *ctx)
{
    msg(D_ROUTE, "no support for get_default_gateway_ipv6() on this system");
    CLEAR(*rgi6);
}
