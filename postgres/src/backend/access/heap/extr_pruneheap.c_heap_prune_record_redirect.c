
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nredirected; size_t* redirected; int* marked; } ;
typedef TYPE_1__ PruneState ;
typedef size_t OffsetNumber ;


 int Assert (int) ;
 int MaxHeapTuplesPerPage ;

__attribute__((used)) static void
heap_prune_record_redirect(PruneState *prstate,
         OffsetNumber offnum, OffsetNumber rdoffnum)
{
 Assert(prstate->nredirected < MaxHeapTuplesPerPage);
 prstate->redirected[prstate->nredirected * 2] = offnum;
 prstate->redirected[prstate->nredirected * 2 + 1] = rdoffnum;
 prstate->nredirected++;
 Assert(!prstate->marked[offnum]);
 prstate->marked[offnum] = 1;
 Assert(!prstate->marked[rdoffnum]);
 prstate->marked[rdoffnum] = 1;
}
