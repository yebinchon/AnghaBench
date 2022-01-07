
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ magic; int is_saved; int context; int refcount; } ;
struct TYPE_13__ {scalar_t__ magic; int is_complete; scalar_t__ num_custom_plans; scalar_t__ is_saved; int total_custom_cost; scalar_t__ generic_cost; int context; TYPE_2__* gplan; } ;
typedef int QueryEnvironment ;
typedef int * ParamListInfo ;
typedef int List ;
typedef TYPE_1__ CachedPlanSource ;
typedef TYPE_2__ CachedPlan ;


 int Assert (int) ;
 TYPE_2__* BuildCachedPlan (TYPE_1__*,int *,int *,int *) ;
 scalar_t__ CACHEDPLANSOURCE_MAGIC ;
 scalar_t__ CACHEDPLAN_MAGIC ;
 int CacheMemoryContext ;
 scalar_t__ CheckCachedPlan (TYPE_1__*) ;
 int CurrentResourceOwner ;
 int ERROR ;
 scalar_t__ INT_MAX ;
 int MemoryContextGetParent (int ) ;
 int MemoryContextSetParent (int ,int ) ;
 int * NIL ;
 int ReleaseGenericPlan (TYPE_1__*) ;
 int ResourceOwnerEnlargePlanCacheRefs (int ) ;
 int ResourceOwnerRememberPlanCacheRef (int ,TYPE_2__*) ;
 int * RevalidateCachedQuery (TYPE_1__*,int *) ;
 scalar_t__ cached_plan_cost (TYPE_2__*,int) ;
 int choose_custom_plan (TYPE_1__*,int *) ;
 int elog (int ,char*) ;

CachedPlan *
GetCachedPlan(CachedPlanSource *plansource, ParamListInfo boundParams,
     bool useResOwner, QueryEnvironment *queryEnv)
{
 CachedPlan *plan = ((void*)0);
 List *qlist;
 bool customplan;


 Assert(plansource->magic == CACHEDPLANSOURCE_MAGIC);
 Assert(plansource->is_complete);

 if (useResOwner && !plansource->is_saved)
  elog(ERROR, "cannot apply ResourceOwner to non-saved cached plan");


 qlist = RevalidateCachedQuery(plansource, queryEnv);


 customplan = choose_custom_plan(plansource, boundParams);

 if (!customplan)
 {
  if (CheckCachedPlan(plansource))
  {

   plan = plansource->gplan;
   Assert(plan->magic == CACHEDPLAN_MAGIC);
  }
  else
  {

   plan = BuildCachedPlan(plansource, qlist, ((void*)0), queryEnv);

   ReleaseGenericPlan(plansource);

   plansource->gplan = plan;
   plan->refcount++;

   if (plansource->is_saved)
   {

    MemoryContextSetParent(plan->context, CacheMemoryContext);
    plan->is_saved = 1;
   }
   else
   {

    MemoryContextSetParent(plan->context,
            MemoryContextGetParent(plansource->context));
   }

   plansource->generic_cost = cached_plan_cost(plan, 0);
   customplan = choose_custom_plan(plansource, boundParams);






   qlist = NIL;
  }
 }

 if (customplan)
 {

  plan = BuildCachedPlan(plansource, qlist, boundParams, queryEnv);

  if (plansource->num_custom_plans < INT_MAX)
  {
   plansource->total_custom_cost += cached_plan_cost(plan, 1);
   plansource->num_custom_plans++;
  }
 }

 Assert(plan != ((void*)0));


 if (useResOwner)
  ResourceOwnerEnlargePlanCacheRefs(CurrentResourceOwner);
 plan->refcount++;
 if (useResOwner)
  ResourceOwnerRememberPlanCacheRef(CurrentResourceOwner, plan);







 if (customplan && plansource->is_saved)
 {
  MemoryContextSetParent(plan->context, CacheMemoryContext);
  plan->is_saved = 1;
 }

 return plan;
}
