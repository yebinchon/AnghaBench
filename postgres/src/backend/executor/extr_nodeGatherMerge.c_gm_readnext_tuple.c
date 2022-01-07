
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleQueueReader ;
struct TYPE_3__ {int ** reader; } ;
typedef int HeapTuple ;
typedef TYPE_1__ GatherMergeState ;


 int CHECK_FOR_INTERRUPTS () ;
 int TupleQueueReaderNext (int *,int,int*) ;

__attribute__((used)) static HeapTuple
gm_readnext_tuple(GatherMergeState *gm_state, int nreader, bool nowait,
      bool *done)
{
 TupleQueueReader *reader;
 HeapTuple tup;


 CHECK_FOR_INTERRUPTS();
 reader = gm_state->reader[nreader - 1];
 tup = TupleQueueReaderNext(reader, nowait, done);

 return tup;
}
