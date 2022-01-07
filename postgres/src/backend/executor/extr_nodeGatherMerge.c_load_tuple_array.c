
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nTuples; int readCounter; int * tuple; int done; } ;
struct TYPE_5__ {TYPE_2__* gm_tuple_buffers; } ;
typedef int HeapTuple ;
typedef TYPE_1__ GatherMergeState ;
typedef TYPE_2__ GMReaderTupleBuffer ;


 int HeapTupleIsValid (int ) ;
 int MAX_TUPLE_STORE ;
 int gm_readnext_tuple (TYPE_1__*,int,int,int *) ;

__attribute__((used)) static void
load_tuple_array(GatherMergeState *gm_state, int reader)
{
 GMReaderTupleBuffer *tuple_buffer;
 int i;


 if (reader == 0)
  return;

 tuple_buffer = &gm_state->gm_tuple_buffers[reader - 1];


 if (tuple_buffer->nTuples == tuple_buffer->readCounter)
  tuple_buffer->nTuples = tuple_buffer->readCounter = 0;


 for (i = tuple_buffer->nTuples; i < MAX_TUPLE_STORE; i++)
 {
  HeapTuple tuple;

  tuple = gm_readnext_tuple(gm_state,
          reader,
          1,
          &tuple_buffer->done);
  if (!HeapTupleIsValid(tuple))
   break;
  tuple_buffer->tuple[i] = tuple;
  tuple_buffer->nTuples++;
 }
}
