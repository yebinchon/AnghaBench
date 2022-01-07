
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_6__ {size_t nr_txns; int heap; int old_change; TYPE_1__* entries; } ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_2__ ReorderBufferIterTXNState ;
typedef int ReorderBuffer ;


 int Assert (int ) ;
 int CloseTransientFile (int) ;
 int ReorderBufferChange ;
 int ReorderBufferReturnChange (int *,int) ;
 int binaryheap_free (int ) ;
 int change ;
 int dlist_container (int,int ,int ) ;
 int dlist_is_empty (int *) ;
 int dlist_pop_head_node (int *) ;
 int node ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
ReorderBufferIterTXNFinish(ReorderBuffer *rb,
         ReorderBufferIterTXNState *state)
{
 int32 off;

 for (off = 0; off < state->nr_txns; off++)
 {
  if (state->entries[off].fd != -1)
   CloseTransientFile(state->entries[off].fd);
 }


 if (!dlist_is_empty(&state->old_change))
 {
  ReorderBufferChange *change;

  change = dlist_container(ReorderBufferChange, node,
         dlist_pop_head_node(&state->old_change));
  ReorderBufferReturnChange(rb, change);
  Assert(dlist_is_empty(&state->old_change));
 }

 binaryheap_free(state->heap);
 pfree(state);
}
