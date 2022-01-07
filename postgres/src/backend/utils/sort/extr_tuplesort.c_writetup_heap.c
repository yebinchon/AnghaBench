
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
struct TYPE_11__ {int t_len; } ;
struct TYPE_10__ {int tuple; } ;
typedef TYPE_2__ SortTuple ;
typedef TYPE_3__* MinimalTuple ;


 int FREEMEM (TYPE_1__*,int ) ;
 int GetMemoryChunkSpace (TYPE_3__*) ;
 int LogicalTapeWrite (int ,int,void*,int) ;
 int MINIMAL_TUPLE_DATA_OFFSET ;
 int heap_free_minimal_tuple (TYPE_3__*) ;

__attribute__((used)) static void
writetup_heap(Tuplesortstate *state, int tapenum, SortTuple *stup)
{
 MinimalTuple tuple = (MinimalTuple) stup->tuple;


 char *tupbody = (char *) tuple + MINIMAL_TUPLE_DATA_OFFSET;
 unsigned int tupbodylen = tuple->t_len - MINIMAL_TUPLE_DATA_OFFSET;


 unsigned int tuplen = tupbodylen + sizeof(int);

 LogicalTapeWrite(state->tapeset, tapenum,
      (void *) &tuplen, sizeof(tuplen));
 LogicalTapeWrite(state->tapeset, tapenum,
      (void *) tupbody, tupbodylen);
 if (state->randomAccess)
  LogicalTapeWrite(state->tapeset, tapenum,
       (void *) &tuplen, sizeof(tuplen));

 if (!state->slabAllocatorUsed)
 {
  FREEMEM(state, GetMemoryChunkSpace(tuple));
  heap_free_minimal_tuple(tuple);
 }
}
