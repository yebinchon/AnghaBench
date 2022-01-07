
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_dead_tuples; scalar_t__ dead_tuples; } ;
typedef TYPE_1__ LVRelStats ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;


 scalar_t__ bsearch (void*,void*,int ,int,int ) ;
 int vac_cmp_itemptr ;

__attribute__((used)) static bool
lazy_tid_reaped(ItemPointer itemptr, void *state)
{
 LVRelStats *vacrelstats = (LVRelStats *) state;
 ItemPointer res;

 res = (ItemPointer) bsearch((void *) itemptr,
        (void *) vacrelstats->dead_tuples,
        vacrelstats->num_dead_tuples,
        sizeof(ItemPointerData),
        vac_cmp_itemptr);

 return (res != ((void*)0));
}
