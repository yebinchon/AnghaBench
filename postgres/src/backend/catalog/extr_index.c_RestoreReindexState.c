
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numPendingReindexedIndexes; int * pendingReindexedIndexes; int currentlyReindexedIndex; int currentlyReindexedHeap; } ;
typedef TYPE_1__ SerializedReindexState ;
typedef int MemoryContext ;


 int Assert (int) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ NIL ;
 int TopMemoryContext ;
 int currentlyReindexedHeap ;
 int currentlyReindexedIndex ;
 scalar_t__ lappend_oid (scalar_t__,int ) ;
 scalar_t__ pendingReindexedIndexes ;

void
RestoreReindexState(void *reindexstate)
{
 SerializedReindexState *sistate = (SerializedReindexState *) reindexstate;
 int c = 0;
 MemoryContext oldcontext;

 currentlyReindexedHeap = sistate->currentlyReindexedHeap;
 currentlyReindexedIndex = sistate->currentlyReindexedIndex;

 Assert(pendingReindexedIndexes == NIL);
 oldcontext = MemoryContextSwitchTo(TopMemoryContext);
 for (c = 0; c < sistate->numPendingReindexedIndexes; ++c)
  pendingReindexedIndexes =
   lappend_oid(pendingReindexedIndexes,
      sistate->pendingReindexedIndexes[c]);
 MemoryContextSwitchTo(oldcontext);
}
