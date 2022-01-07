
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tuplen ;
struct TYPE_6__ {int slabAllocatorUsed; int tapeset; scalar_t__ randomAccess; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_7__ {int tuple; } ;
typedef TYPE_2__ SortTuple ;
typedef scalar_t__ IndexTuple ;


 int FREEMEM (TYPE_1__*,int ) ;
 int GetMemoryChunkSpace (scalar_t__) ;
 int IndexTupleSize (scalar_t__) ;
 int LogicalTapeWrite (int ,int,void*,int) ;
 int pfree (scalar_t__) ;

__attribute__((used)) static void
writetup_index(Tuplesortstate *state, int tapenum, SortTuple *stup)
{
 IndexTuple tuple = (IndexTuple) stup->tuple;
 unsigned int tuplen;

 tuplen = IndexTupleSize(tuple) + sizeof(tuplen);
 LogicalTapeWrite(state->tapeset, tapenum,
      (void *) &tuplen, sizeof(tuplen));
 LogicalTapeWrite(state->tapeset, tapenum,
      (void *) tuple, IndexTupleSize(tuple));
 if (state->randomAccess)
  LogicalTapeWrite(state->tapeset, tapenum,
       (void *) &tuplen, sizeof(tuplen));

 if (!state->slabAllocatorUsed)
 {
  FREEMEM(state, GetMemoryChunkSpace(tuple));
  pfree(tuple);
 }
}
