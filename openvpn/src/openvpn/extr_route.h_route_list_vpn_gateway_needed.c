
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct route_list {TYPE_1__ spec; } ;


 int RTSA_REMOTE_ENDPOINT ;

__attribute__((used)) static inline bool
route_list_vpn_gateway_needed(const struct route_list *rl)
{
    if (!rl)
    {
        return 0;
    }
    else
    {
        return !(rl->spec.flags & RTSA_REMOTE_ENDPOINT);
    }
}
