
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ remote_host_local; int remote_endpoint; int bypass; } ;
struct route_gateway_address {int addr; int netmask; } ;
struct TYPE_3__ {int const flags; size_t n_addrs; struct route_gateway_address const gateway; struct route_gateway_address* addrs; } ;
struct route_list {int flags; TYPE_2__ spec; TYPE_1__ rgi; } ;


 int RGI_ADDR_DEFINED ;
 int RGI_NETMASK_DEFINED ;
 int RG_BLOCK_LOCAL ;
 int RTSA_REMOTE_ENDPOINT ;
 scalar_t__ TLA_LOCAL ;
 int add_block_local_item (struct route_list*,struct route_gateway_address const*,int ) ;
 int add_bypass_address (int *,int) ;

__attribute__((used)) static void
add_block_local(struct route_list *rl)
{
    const int rgi_needed = (RGI_ADDR_DEFINED|RGI_NETMASK_DEFINED);
    if ((rl->flags & RG_BLOCK_LOCAL)
        && (rl->rgi.flags & rgi_needed) == rgi_needed
        && (rl->spec.flags & RTSA_REMOTE_ENDPOINT)
        && rl->spec.remote_host_local != TLA_LOCAL)
    {
        size_t i;



        add_bypass_address(&rl->spec.bypass, rl->rgi.gateway.addr);



        add_block_local_item(rl, &rl->rgi.gateway, rl->spec.remote_endpoint);


        for (i = 0; i < rl->rgi.n_addrs; ++i)
        {
            const struct route_gateway_address *gwa = &rl->rgi.addrs[i];

            if (!((rl->rgi.gateway.addr & rl->rgi.gateway.netmask) == (gwa->addr & gwa->netmask)
                  && rl->rgi.gateway.netmask == gwa->netmask))
            {
                add_block_local_item(rl, gwa, rl->spec.remote_endpoint);
            }
        }
    }
}
