
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ magic; } ;
struct TYPE_5__ {TYPE_2__* gplan; } ;
typedef TYPE_1__ CachedPlanSource ;
typedef TYPE_2__ CachedPlan ;


 int Assert (int) ;
 scalar_t__ CACHEDPLAN_MAGIC ;
 int ReleaseCachedPlan (TYPE_2__*,int) ;

__attribute__((used)) static void
ReleaseGenericPlan(CachedPlanSource *plansource)
{

 if (plansource->gplan)
 {
  CachedPlan *plan = plansource->gplan;

  Assert(plan->magic == CACHEDPLAN_MAGIC);
  plansource->gplan = ((void*)0);
  ReleaseCachedPlan(plan, 0);
 }
}
