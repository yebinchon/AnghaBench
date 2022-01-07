
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tuplen ;
struct TYPE_9__ {int slabAllocatorUsed; int tapeset; scalar_t__ randomAccess; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_11__ {int t_len; unsigned int t_self; unsigned int* t_data; } ;
struct TYPE_10__ {int tuple; } ;
typedef TYPE_2__ SortTuple ;
typedef int ItemPointerData ;
typedef TYPE_3__* HeapTuple ;


 int FREEMEM (TYPE_1__*,int ) ;
 int GetMemoryChunkSpace (TYPE_3__*) ;
 int LogicalTapeWrite (int ,int,unsigned int*,int) ;
 int heap_freetuple (TYPE_3__*) ;

__attribute__((used)) static void
writetup_cluster(Tuplesortstate *state, int tapenum, SortTuple *stup)
{
 HeapTuple tuple = (HeapTuple) stup->tuple;
 unsigned int tuplen = tuple->t_len + sizeof(ItemPointerData) + sizeof(int);


 LogicalTapeWrite(state->tapeset, tapenum,
      &tuplen, sizeof(tuplen));
 LogicalTapeWrite(state->tapeset, tapenum,
      &tuple->t_self, sizeof(ItemPointerData));
 LogicalTapeWrite(state->tapeset, tapenum,
      tuple->t_data, tuple->t_len);
 if (state->randomAccess)
  LogicalTapeWrite(state->tapeset, tapenum,
       &tuplen, sizeof(tuplen));

 if (!state->slabAllocatorUsed)
 {
  FREEMEM(state, GetMemoryChunkSpace(tuple));
  heap_freetuple(tuple);
 }
}
