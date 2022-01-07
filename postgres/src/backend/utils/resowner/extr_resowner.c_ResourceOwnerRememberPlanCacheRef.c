
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int planrefarr; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int CachedPlan ;


 int PointerGetDatum (int *) ;
 int ResourceArrayAdd (int *,int ) ;

void
ResourceOwnerRememberPlanCacheRef(ResourceOwner owner, CachedPlan *plan)
{
 ResourceArrayAdd(&(owner->planrefarr), PointerGetDatum(plan));
}
