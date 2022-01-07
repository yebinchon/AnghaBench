
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ndead; size_t* nowdead; int* marked; } ;
typedef TYPE_1__ PruneState ;
typedef size_t OffsetNumber ;


 int Assert (int) ;
 size_t MaxHeapTuplesPerPage ;

__attribute__((used)) static void
heap_prune_record_dead(PruneState *prstate, OffsetNumber offnum)
{
 Assert(prstate->ndead < MaxHeapTuplesPerPage);
 prstate->nowdead[prstate->ndead] = offnum;
 prstate->ndead++;
 Assert(!prstate->marked[offnum]);
 prstate->marked[offnum] = 1;
}
