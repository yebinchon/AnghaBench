
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; int is_complete; int is_saved; int node; int context; scalar_t__ is_oneshot; } ;
typedef TYPE_1__ CachedPlanSource ;


 int Assert (int) ;
 scalar_t__ CACHEDPLANSOURCE_MAGIC ;
 int CacheMemoryContext ;
 int ERROR ;
 int MemoryContextSetParent (int ,int ) ;
 int ReleaseGenericPlan (TYPE_1__*) ;
 int dlist_push_tail (int *,int *) ;
 int elog (int ,char*) ;
 int saved_plan_list ;

void
SaveCachedPlan(CachedPlanSource *plansource)
{

 Assert(plansource->magic == CACHEDPLANSOURCE_MAGIC);
 Assert(plansource->is_complete);
 Assert(!plansource->is_saved);


 if (plansource->is_oneshot)
  elog(ERROR, "cannot save one-shot cached plan");
 ReleaseGenericPlan(plansource);






 MemoryContextSetParent(plansource->context, CacheMemoryContext);




 dlist_push_tail(&saved_plan_list, &plansource->node);

 plansource->is_saved = 1;
}
