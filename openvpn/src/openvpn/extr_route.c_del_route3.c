
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int dummy; } ;
struct route_ipv4 {int flags; void* gateway; void* netmask; void* network; } ;
struct route_gateway_info {int dummy; } ;
struct env_set {int dummy; } ;
typedef int openvpn_net_ctx_t ;
typedef void* in_addr_t ;


 int CLEAR (struct route_ipv4) ;
 int RT_ADDED ;
 int RT_DEFINED ;
 int delete_route (struct route_ipv4*,struct tuntap const*,unsigned int,struct route_gateway_info const*,struct env_set const*,int *) ;

__attribute__((used)) static void
del_route3(in_addr_t network,
           in_addr_t netmask,
           in_addr_t gateway,
           const struct tuntap *tt,
           unsigned int flags,
           const struct route_gateway_info *rgi,
           const struct env_set *es,
           openvpn_net_ctx_t *ctx)
{
    struct route_ipv4 r;
    CLEAR(r);
    r.flags = RT_DEFINED|RT_ADDED;
    r.network = network;
    r.netmask = netmask;
    r.gateway = gateway;
    delete_route(&r, tt, flags, rgi, es, ctx);
}
