
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_6__ {int memtupsize; scalar_t__ allowedMem; scalar_t__ availMem; int growmemtuples; int * memtuples; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int SortTuple ;
typedef int Size ;


 int ERROR ;
 int FREEMEM (TYPE_1__*,int ) ;
 int GetMemoryChunkSpace (int *) ;
 int INT_MAX ;
 scalar_t__ LACKMEM (TYPE_1__*) ;
 int MaxAllocHugeSize ;
 int USEMEM (TYPE_1__*,int ) ;
 int elog (int ,char*) ;
 scalar_t__ repalloc_huge (int *,int) ;

__attribute__((used)) static bool
grow_memtuples(Tuplesortstate *state)
{
 int newmemtupsize;
 int memtupsize = state->memtupsize;
 int64 memNowUsed = state->allowedMem - state->availMem;


 if (!state->growmemtuples)
  return 0;


 if (memNowUsed <= state->availMem)
 {




  if (memtupsize < INT_MAX / 2)
   newmemtupsize = memtupsize * 2;
  else
  {
   newmemtupsize = INT_MAX;
   state->growmemtuples = 0;
  }
 }
 else
 {
  double grow_ratio;

  grow_ratio = (double) state->allowedMem / (double) memNowUsed;
  if (memtupsize * grow_ratio < INT_MAX)
   newmemtupsize = (int) (memtupsize * grow_ratio);
  else
   newmemtupsize = INT_MAX;


  state->growmemtuples = 0;
 }


 if (newmemtupsize <= memtupsize)
  goto noalloc;
 if ((Size) newmemtupsize >= MaxAllocHugeSize / sizeof(SortTuple))
 {
  newmemtupsize = (int) (MaxAllocHugeSize / sizeof(SortTuple));
  state->growmemtuples = 0;
 }
 if (state->availMem < (int64) ((newmemtupsize - memtupsize) * sizeof(SortTuple)))
  goto noalloc;


 FREEMEM(state, GetMemoryChunkSpace(state->memtuples));
 state->memtupsize = newmemtupsize;
 state->memtuples = (SortTuple *)
  repalloc_huge(state->memtuples,
       state->memtupsize * sizeof(SortTuple));
 USEMEM(state, GetMemoryChunkSpace(state->memtuples));
 if (LACKMEM(state))
  elog(ERROR, "unexpected out-of-memory situation in tuplesort");
 return 1;

noalloc:

 state->growmemtuples = 0;
 return 0;
}
