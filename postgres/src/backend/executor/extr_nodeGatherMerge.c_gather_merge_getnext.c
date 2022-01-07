
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_6__ {int ** gm_slots; int gm_heap; int gm_initialized; } ;
typedef TYPE_1__ GatherMergeState ;


 int DatumGetInt32 (int ) ;
 int Int32GetDatum (int) ;
 scalar_t__ binaryheap_empty (int ) ;
 int binaryheap_first (int ) ;
 int binaryheap_remove_first (int ) ;
 int binaryheap_replace_first (int ,int ) ;
 int gather_merge_clear_tuples (TYPE_1__*) ;
 int gather_merge_init (TYPE_1__*) ;
 scalar_t__ gather_merge_readnext (TYPE_1__*,int,int) ;

__attribute__((used)) static TupleTableSlot *
gather_merge_getnext(GatherMergeState *gm_state)
{
 int i;

 if (!gm_state->gm_initialized)
 {




  gather_merge_init(gm_state);
 }
 else
 {






  i = DatumGetInt32(binaryheap_first(gm_state->gm_heap));

  if (gather_merge_readnext(gm_state, i, 0))
   binaryheap_replace_first(gm_state->gm_heap, Int32GetDatum(i));
  else
  {

   (void) binaryheap_remove_first(gm_state->gm_heap);
  }
 }

 if (binaryheap_empty(gm_state->gm_heap))
 {

  gather_merge_clear_tuples(gm_state);
  return ((void*)0);
 }
 else
 {

  i = DatumGetInt32(binaryheap_first(gm_state->gm_heap));
  return gm_state->gm_slots[i];
 }
}
