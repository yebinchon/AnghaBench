
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int memtupcount; int tupDesc; TYPE_1__* indexInfo; TYPE_3__* memtuples; TYPE_4__* sortKeys; int tuplecontext; } ;
typedef TYPE_2__ Tuplesortstate ;
struct TYPE_12__ {void* (* abbrev_converter ) (void*,TYPE_4__*) ;} ;
struct TYPE_11__ {int isnull1; void* datum1; void* tuple; } ;
struct TYPE_9__ {int * ii_IndexAttrNumbers; } ;
typedef TYPE_3__ SortTuple ;
typedef int MemoryContext ;
typedef scalar_t__ HeapTuple ;
typedef void* Datum ;


 int GetMemoryChunkSpace (scalar_t__) ;
 int MemoryContextSwitchTo (int ) ;
 int USEMEM (TYPE_2__*,int ) ;
 int consider_abort_common (TYPE_2__*) ;
 scalar_t__ heap_copytuple (scalar_t__) ;
 void* heap_getattr (scalar_t__,int ,int ,int *) ;
 void* stub1 (void*,TYPE_4__*) ;

__attribute__((used)) static void
copytup_cluster(Tuplesortstate *state, SortTuple *stup, void *tup)
{
 HeapTuple tuple = (HeapTuple) tup;
 Datum original;
 MemoryContext oldcontext = MemoryContextSwitchTo(state->tuplecontext);


 tuple = heap_copytuple(tuple);
 stup->tuple = (void *) tuple;
 USEMEM(state, GetMemoryChunkSpace(tuple));

 MemoryContextSwitchTo(oldcontext);





 if (state->indexInfo->ii_IndexAttrNumbers[0] == 0)
  return;

 original = heap_getattr(tuple,
       state->indexInfo->ii_IndexAttrNumbers[0],
       state->tupDesc,
       &stup->isnull1);

 if (!state->sortKeys->abbrev_converter || stup->isnull1)
 {
  stup->datum1 = original;
 }
 else if (!consider_abort_common(state))
 {

  stup->datum1 = state->sortKeys->abbrev_converter(original,
               state->sortKeys);
 }
 else
 {

  int i;

  stup->datum1 = original;
  for (i = 0; i < state->memtupcount; i++)
  {
   SortTuple *mtup = &state->memtuples[i];

   tuple = (HeapTuple) mtup->tuple;
   mtup->datum1 = heap_getattr(tuple,
          state->indexInfo->ii_IndexAttrNumbers[0],
          state->tupDesc,
          &mtup->isnull1);
  }
 }
}
