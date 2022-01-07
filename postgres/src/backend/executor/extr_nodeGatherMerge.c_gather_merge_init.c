
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int num_workers; } ;
struct TYPE_8__ {int plan; } ;
struct TYPE_10__ {int nreaders; int need_to_scan_locally; int gm_initialized; int gm_heap; int ** gm_slots; TYPE_2__* gm_tuple_buffers; TYPE_1__ ps; } ;
struct TYPE_9__ {int done; scalar_t__ readCounter; scalar_t__ nTuples; } ;
typedef TYPE_3__ GatherMergeState ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ExecClearTuple (int *) ;
 int GatherMerge ;
 int Int32GetDatum (int) ;
 scalar_t__ TupIsNull (int *) ;
 int binaryheap_add_unordered (int ,int ) ;
 int binaryheap_build (int ) ;
 int binaryheap_reset (int ) ;
 TYPE_7__* castNode (int ,int ) ;
 scalar_t__ gather_merge_readnext (TYPE_3__*,int,int) ;
 int load_tuple_array (TYPE_3__*,int) ;

__attribute__((used)) static void
gather_merge_init(GatherMergeState *gm_state)
{
 int nreaders = gm_state->nreaders;
 bool nowait = 1;
 int i;


 Assert(nreaders <= castNode(GatherMerge, gm_state->ps.plan)->num_workers);


 gm_state->gm_slots[0] = ((void*)0);


 for (i = 0; i < nreaders; i++)
 {

  gm_state->gm_tuple_buffers[i].nTuples = 0;
  gm_state->gm_tuple_buffers[i].readCounter = 0;

  gm_state->gm_tuple_buffers[i].done = 0;

  ExecClearTuple(gm_state->gm_slots[i + 1]);
 }


 binaryheap_reset(gm_state->gm_heap);
reread:
 for (i = 0; i <= nreaders; i++)
 {
  CHECK_FOR_INTERRUPTS();


  if ((i == 0) ? gm_state->need_to_scan_locally :
   !gm_state->gm_tuple_buffers[i - 1].done)
  {
   if (TupIsNull(gm_state->gm_slots[i]))
   {

    if (gather_merge_readnext(gm_state, i, nowait))
     binaryheap_add_unordered(gm_state->gm_heap,
            Int32GetDatum(i));
   }
   else
   {




    load_tuple_array(gm_state, i);
   }
  }
 }


 for (i = 1; i <= nreaders; i++)
 {
  if (!gm_state->gm_tuple_buffers[i - 1].done &&
   TupIsNull(gm_state->gm_slots[i]))
  {
   nowait = 0;
   goto reread;
  }
 }


 binaryheap_build(gm_state->gm_heap);

 gm_state->gm_initialized = 1;
}
