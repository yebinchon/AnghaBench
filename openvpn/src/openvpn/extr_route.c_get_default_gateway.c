
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_gateway_info {int dummy; } ;
typedef int openvpn_net_ctx_t ;


 int CLEAR (struct route_gateway_info) ;

void
get_default_gateway(struct route_gateway_info *rgi, openvpn_net_ctx_t *ctx)
{
    CLEAR(*rgi);
}
