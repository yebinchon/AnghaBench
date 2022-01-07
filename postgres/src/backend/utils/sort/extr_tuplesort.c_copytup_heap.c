
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int memtupcount; int tupDesc; TYPE_5__* sortKeys; TYPE_2__* memtuples; int tuplecontext; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int TupleTableSlot ;
struct TYPE_17__ {int ssup_attno; void* (* abbrev_converter ) (void*,TYPE_5__*) ;} ;
struct TYPE_16__ {char* t_len; void* t_data; } ;
struct TYPE_15__ {int t_len; } ;
struct TYPE_14__ {int isnull1; void* datum1; void* tuple; } ;
typedef TYPE_2__ SortTuple ;
typedef TYPE_3__* MinimalTuple ;
typedef int MemoryContext ;
typedef void* HeapTupleHeader ;
typedef TYPE_4__ HeapTupleData ;
typedef void* Datum ;


 TYPE_3__* ExecCopySlotMinimalTuple (int *) ;
 int GetMemoryChunkSpace (TYPE_3__*) ;
 char* MINIMAL_TUPLE_OFFSET ;
 int MemoryContextSwitchTo (int ) ;
 int USEMEM (TYPE_1__*,int ) ;
 int consider_abort_common (TYPE_1__*) ;
 void* heap_getattr (TYPE_4__*,int ,int ,int *) ;
 void* stub1 (void*,TYPE_5__*) ;

__attribute__((used)) static void
copytup_heap(Tuplesortstate *state, SortTuple *stup, void *tup)
{




 TupleTableSlot *slot = (TupleTableSlot *) tup;
 Datum original;
 MinimalTuple tuple;
 HeapTupleData htup;
 MemoryContext oldcontext = MemoryContextSwitchTo(state->tuplecontext);


 tuple = ExecCopySlotMinimalTuple(slot);
 stup->tuple = (void *) tuple;
 USEMEM(state, GetMemoryChunkSpace(tuple));

 htup.t_len = tuple->t_len + MINIMAL_TUPLE_OFFSET;
 htup.t_data = (HeapTupleHeader) ((char *) tuple - MINIMAL_TUPLE_OFFSET);
 original = heap_getattr(&htup,
       state->sortKeys[0].ssup_attno,
       state->tupDesc,
       &stup->isnull1);

 MemoryContextSwitchTo(oldcontext);

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

   htup.t_len = ((MinimalTuple) mtup->tuple)->t_len +
    MINIMAL_TUPLE_OFFSET;
   htup.t_data = (HeapTupleHeader) ((char *) mtup->tuple -
            MINIMAL_TUPLE_OFFSET);

   mtup->datum1 = heap_getattr(&htup,
          state->sortKeys[0].ssup_attno,
          state->tupDesc,
          &mtup->isnull1);
  }
 }
}
