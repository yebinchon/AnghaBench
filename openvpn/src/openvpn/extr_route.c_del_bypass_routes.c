
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int dummy; } ;
struct route_gateway_info {int dummy; } ;
struct route_bypass {int n_bypass; scalar_t__* bypass; } ;
struct env_set {int dummy; } ;
typedef int openvpn_net_ctx_t ;
typedef int in_addr_t ;


 int IPV4_NETMASK_HOST ;
 unsigned int ROUTE_REF_GW ;
 int del_route3 (scalar_t__,int ,int ,struct tuntap const*,unsigned int,struct route_gateway_info const*,struct env_set const*,int *) ;

__attribute__((used)) static void
del_bypass_routes(struct route_bypass *rb,
                  in_addr_t gateway,
                  const struct tuntap *tt,
                  unsigned int flags,
                  const struct route_gateway_info *rgi,
                  const struct env_set *es,
                  openvpn_net_ctx_t *ctx)
{
    int i;
    for (i = 0; i < rb->n_bypass; ++i)
    {
        if (rb->bypass[i])
        {
            del_route3(rb->bypass[i],
                       IPV4_NETMASK_HOST,
                       gateway,
                       tt,
                       flags | ROUTE_REF_GW,
                       rgi,
                       es,
                       ctx);
        }
    }
}
