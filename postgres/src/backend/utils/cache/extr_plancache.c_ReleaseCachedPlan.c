
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; int is_saved; scalar_t__ refcount; int context; int is_oneshot; } ;
typedef TYPE_1__ CachedPlan ;


 int Assert (int) ;
 scalar_t__ CACHEDPLAN_MAGIC ;
 int CurrentResourceOwner ;
 int MemoryContextDelete (int ) ;
 int ResourceOwnerForgetPlanCacheRef (int ,TYPE_1__*) ;

void
ReleaseCachedPlan(CachedPlan *plan, bool useResOwner)
{
 Assert(plan->magic == CACHEDPLAN_MAGIC);
 if (useResOwner)
 {
  Assert(plan->is_saved);
  ResourceOwnerForgetPlanCacheRef(CurrentResourceOwner, plan);
 }
 Assert(plan->refcount > 0);
 plan->refcount--;
 if (plan->refcount == 0)
 {

  plan->magic = 0;


  if (!plan->is_oneshot)
   MemoryContextDelete(plan->context);
 }
}
