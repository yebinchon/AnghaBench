
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int memtupcount; TYPE_2__* memtuples; TYPE_4__* sortKeys; int sortcontext; int datumTypeLen; int tuples; int tuplecontext; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_11__ {void* (* abbrev_converter ) (void*,TYPE_4__*) ;} ;
struct TYPE_10__ {int isnull1; int * tuple; void* datum1; } ;
typedef TYPE_2__ SortTuple ;
typedef int MemoryContext ;
typedef void* Datum ;


 int * DatumGetPointer (void*) ;
 int GetMemoryChunkSpace (int *) ;
 int MemoryContextSwitchTo (int ) ;
 void* PointerGetDatum (int *) ;
 int USEMEM (TYPE_1__*,int ) ;
 int consider_abort_common (TYPE_1__*) ;
 void* datumCopy (void*,int,int ) ;
 int puttuple_common (TYPE_1__*,TYPE_2__*) ;
 void* stub1 (void*,TYPE_4__*) ;

void
tuplesort_putdatum(Tuplesortstate *state, Datum val, bool isNull)
{
 MemoryContext oldcontext = MemoryContextSwitchTo(state->tuplecontext);
 SortTuple stup;
 if (isNull || !state->tuples)
 {




  stup.datum1 = !isNull ? val : (Datum) 0;
  stup.isnull1 = isNull;
  stup.tuple = ((void*)0);
  MemoryContextSwitchTo(state->sortcontext);
 }
 else
 {
  Datum original = datumCopy(val, 0, state->datumTypeLen);

  stup.isnull1 = 0;
  stup.tuple = DatumGetPointer(original);
  USEMEM(state, GetMemoryChunkSpace(stup.tuple));
  MemoryContextSwitchTo(state->sortcontext);

  if (!state->sortKeys->abbrev_converter)
  {
   stup.datum1 = original;
  }
  else if (!consider_abort_common(state))
  {

   stup.datum1 = state->sortKeys->abbrev_converter(original,
               state->sortKeys);
  }
  else
  {

   int i;

   stup.datum1 = original;
   for (i = 0; i < state->memtupcount; i++)
   {
    SortTuple *mtup = &state->memtuples[i];

    mtup->datum1 = PointerGetDatum(mtup->tuple);
   }
  }
 }

 puttuple_common(state, &stup);

 MemoryContextSwitchTo(oldcontext);
}
