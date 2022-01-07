
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int netmask; } ;
struct route_gateway_info {int const flags; TYPE_1__ gateway; } ;
struct gc_arena {int dummy; } ;
typedef int openvpn_net_ctx_t ;
typedef int in_addr_t ;


 int M_WARN ;
 int RGI_ADDR_DEFINED ;
 int RGI_NETMASK_DEFINED ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int get_default_gateway (struct route_gateway_info*,int *) ;
 int msg (int ,char*) ;

void
warn_on_use_of_common_subnets(openvpn_net_ctx_t *ctx)
{
    struct gc_arena gc = gc_new();
    struct route_gateway_info rgi;
    const int needed = (RGI_ADDR_DEFINED|RGI_NETMASK_DEFINED);

    get_default_gateway(&rgi, ctx);
    if ((rgi.flags & needed) == needed)
    {
        const in_addr_t lan_network = rgi.gateway.addr & rgi.gateway.netmask;
        if (lan_network == 0xC0A80000 || lan_network == 0xC0A80100)
        {
            msg(M_WARN, "NOTE: your local LAN uses the extremely common subnet address 192.168.0.x or 192.168.1.x.  Be aware that this might create routing conflicts if you connect to the VPN server from public locations such as internet cafes that use the same subnet.");
        }
    }
    gc_free(&gc);
}
