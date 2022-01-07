
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int remote_endpoint; int flags; } ;
struct route_list {TYPE_1__ spec; } ;
struct env_set {int dummy; } ;
typedef int in_addr_t ;


 int ASSERT (struct route_list*) ;
 int RTSA_REMOTE_ENDPOINT ;
 int setenv_route_addr (struct env_set*,char*,int ,int) ;

void
route_list_add_vpn_gateway(struct route_list *rl,
                           struct env_set *es,
                           const in_addr_t addr)
{
    ASSERT(rl);
    rl->spec.remote_endpoint = addr;
    rl->spec.flags |= RTSA_REMOTE_ENDPOINT;
    setenv_route_addr(es, "vpn_gateway", rl->spec.remote_endpoint, -1);
}
