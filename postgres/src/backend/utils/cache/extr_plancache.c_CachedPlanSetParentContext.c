
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ magic; int is_complete; TYPE_1__* gplan; int context; scalar_t__ is_oneshot; scalar_t__ is_saved; } ;
struct TYPE_4__ {scalar_t__ magic; int context; } ;
typedef int MemoryContext ;
typedef TYPE_2__ CachedPlanSource ;


 int Assert (int) ;
 scalar_t__ CACHEDPLANSOURCE_MAGIC ;
 scalar_t__ CACHEDPLAN_MAGIC ;
 int ERROR ;
 int MemoryContextSetParent (int ,int ) ;
 int elog (int ,char*) ;

void
CachedPlanSetParentContext(CachedPlanSource *plansource,
         MemoryContext newcontext)
{

 Assert(plansource->magic == CACHEDPLANSOURCE_MAGIC);
 Assert(plansource->is_complete);


 if (plansource->is_saved)
  elog(ERROR, "cannot move a saved cached plan to another context");
 if (plansource->is_oneshot)
  elog(ERROR, "cannot move a one-shot cached plan to another context");


 MemoryContextSetParent(plansource->context, newcontext);






 if (plansource->gplan)
 {
  Assert(plansource->gplan->magic == CACHEDPLAN_MAGIC);
  MemoryContextSetParent(plansource->gplan->context, newcontext);
 }
}
