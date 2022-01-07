
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int planrefarr; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int CachedPlan ;


 int ERROR ;
 int PointerGetDatum (int *) ;
 int ResourceArrayRemove (int *,int ) ;
 int elog (int ,char*,int *,int ) ;

void
ResourceOwnerForgetPlanCacheRef(ResourceOwner owner, CachedPlan *plan)
{
 if (!ResourceArrayRemove(&(owner->planrefarr), PointerGetDatum(plan)))
  elog(ERROR, "plancache reference %p is not owned by resource owner %s",
    plan, owner->name);
}
