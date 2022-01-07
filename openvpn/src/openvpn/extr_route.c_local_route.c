
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; scalar_t__ netmask; } ;
struct route_gateway_info {int const flags; size_t n_addrs; struct route_gateway_address* addrs; TYPE_1__ gateway; } ;
struct route_gateway_address {scalar_t__ addr; scalar_t__ netmask; } ;
typedef scalar_t__ in_addr_t ;


 int LR_MATCH ;
 int LR_NOMATCH ;
 int RGI_ADDR_DEFINED ;
 int RGI_IFACE_DEFINED ;
 int RGI_NETMASK_DEFINED ;

__attribute__((used)) static int
local_route(in_addr_t network,
            in_addr_t netmask,
            in_addr_t gateway,
            const struct route_gateway_info *rgi)
{

    const int rgi_needed = (RGI_ADDR_DEFINED|RGI_NETMASK_DEFINED|RGI_IFACE_DEFINED);
    if (rgi
        && (rgi->flags & rgi_needed) == rgi_needed
        && gateway == rgi->gateway.addr
        && netmask == 0xFFFFFFFF)
    {
        if (((network ^ rgi->gateway.addr) & rgi->gateway.netmask) == 0)
        {
            return LR_MATCH;
        }
        else
        {

            size_t i;
            for (i = 0; i < rgi->n_addrs; ++i)
            {
                const struct route_gateway_address *gwa = &rgi->addrs[i];
                if (((network ^ gwa->addr) & gwa->netmask) == 0)
                {
                    return LR_MATCH;
                }
            }
        }
    }
    return LR_NOMATCH;
}
