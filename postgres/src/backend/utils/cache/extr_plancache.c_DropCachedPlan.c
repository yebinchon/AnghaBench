
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; int is_saved; int context; int is_oneshot; int node; } ;
typedef TYPE_1__ CachedPlanSource ;


 int Assert (int) ;
 scalar_t__ CACHEDPLANSOURCE_MAGIC ;
 int MemoryContextDelete (int ) ;
 int ReleaseGenericPlan (TYPE_1__*) ;
 int dlist_delete (int *) ;

void
DropCachedPlan(CachedPlanSource *plansource)
{
 Assert(plansource->magic == CACHEDPLANSOURCE_MAGIC);


 if (plansource->is_saved)
 {
  dlist_delete(&plansource->node);
  plansource->is_saved = 0;
 }


 ReleaseGenericPlan(plansource);


 plansource->magic = 0;





 if (!plansource->is_oneshot)
  MemoryContextDelete(plansource->context);
}
