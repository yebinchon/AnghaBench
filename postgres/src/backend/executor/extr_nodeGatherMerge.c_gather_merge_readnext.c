
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_14__ {int * es_query_dsa; } ;
struct TYPE_13__ {scalar_t__ nTuples; scalar_t__ readCounter; scalar_t__ done; int * tuple; } ;
struct TYPE_10__ {TYPE_5__* state; } ;
struct TYPE_12__ {int need_to_scan_locally; int ** gm_slots; TYPE_4__* gm_tuple_buffers; TYPE_2__* pei; TYPE_1__ ps; } ;
struct TYPE_11__ {int * area; } ;
typedef int PlanState ;
typedef int HeapTuple ;
typedef TYPE_3__ GatherMergeState ;
typedef TYPE_4__ GMReaderTupleBuffer ;
typedef TYPE_5__ EState ;


 int Assert (int ) ;
 int * ExecProcNode (int *) ;
 int ExecStoreHeapTuple (int ,int *,int) ;
 int HeapTupleIsValid (int ) ;
 int TupIsNull (int *) ;
 int gm_readnext_tuple (TYPE_3__*,int,int,scalar_t__*) ;
 int load_tuple_array (TYPE_3__*,int) ;
 int * outerPlanState (TYPE_3__*) ;

__attribute__((used)) static bool
gather_merge_readnext(GatherMergeState *gm_state, int reader, bool nowait)
{
 GMReaderTupleBuffer *tuple_buffer;
 HeapTuple tup;





 if (reader == 0)
 {
  if (gm_state->need_to_scan_locally)
  {
   PlanState *outerPlan = outerPlanState(gm_state);
   TupleTableSlot *outerTupleSlot;
   EState *estate = gm_state->ps.state;


   estate->es_query_dsa = gm_state->pei ? gm_state->pei->area : ((void*)0);
   outerTupleSlot = ExecProcNode(outerPlan);
   estate->es_query_dsa = ((void*)0);

   if (!TupIsNull(outerTupleSlot))
   {
    gm_state->gm_slots[0] = outerTupleSlot;
    return 1;
   }

   gm_state->need_to_scan_locally = 0;
  }
  return 0;
 }


 tuple_buffer = &gm_state->gm_tuple_buffers[reader - 1];

 if (tuple_buffer->nTuples > tuple_buffer->readCounter)
 {

  tup = tuple_buffer->tuple[tuple_buffer->readCounter++];
 }
 else if (tuple_buffer->done)
 {

  return 0;
 }
 else
 {

  tup = gm_readnext_tuple(gm_state,
        reader,
        nowait,
        &tuple_buffer->done);
  if (!HeapTupleIsValid(tup))
   return 0;





  load_tuple_array(gm_state, reader);
 }

 Assert(HeapTupleIsValid(tup));


 ExecStoreHeapTuple(tup,
        gm_state->gm_slots[reader],

        1);

 return 1;
}
