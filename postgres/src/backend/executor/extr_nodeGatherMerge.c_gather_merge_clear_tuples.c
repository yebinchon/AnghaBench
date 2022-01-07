
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ readCounter; scalar_t__ nTuples; int * tuple; } ;
struct TYPE_4__ {int nreaders; int * gm_slots; TYPE_2__* gm_tuple_buffers; } ;
typedef TYPE_1__ GatherMergeState ;
typedef TYPE_2__ GMReaderTupleBuffer ;


 int ExecClearTuple (int ) ;
 int heap_freetuple (int ) ;

__attribute__((used)) static void
gather_merge_clear_tuples(GatherMergeState *gm_state)
{
 int i;

 for (i = 0; i < gm_state->nreaders; i++)
 {
  GMReaderTupleBuffer *tuple_buffer = &gm_state->gm_tuple_buffers[i];

  while (tuple_buffer->readCounter < tuple_buffer->nTuples)
   heap_freetuple(tuple_buffer->tuple[tuple_buffer->readCounter++]);

  ExecClearTuple(gm_state->gm_slots[i + 1]);
 }
}
