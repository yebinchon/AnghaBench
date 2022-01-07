
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct route_gateway_info {TYPE_1__ gateway; } ;
typedef int in_addr_t ;


 int TLA_LOCAL ;
 int TLA_NONLOCAL ;
 int TLA_NOT_IMPLEMENTED ;
 scalar_t__ local_route (int const,int,int ,struct route_gateway_info const*) ;

int
test_local_addr(const in_addr_t addr, const struct route_gateway_info *rgi)
{
    if (rgi)
    {
        if (local_route(addr, 0xFFFFFFFF, rgi->gateway.addr, rgi))
        {
            return TLA_LOCAL;
        }
        else
        {
            return TLA_NONLOCAL;
        }
    }
    return TLA_NOT_IMPLEMENTED;
}
