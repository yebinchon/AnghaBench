
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_gateway_info {int flags; } ;


 int const LR_MATCH ;
 int RGI_ON_LINK ;
 unsigned int const ROUTE_REF_GW ;

__attribute__((used)) static inline bool
is_on_link(const int is_local_route, const unsigned int flags, const struct route_gateway_info *rgi)
{
    return rgi && (is_local_route == LR_MATCH || ((flags & ROUTE_REF_GW) && (rgi->flags & RGI_ON_LINK)));
}
