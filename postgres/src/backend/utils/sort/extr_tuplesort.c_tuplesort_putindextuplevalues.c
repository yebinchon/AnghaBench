
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int memtupcount; int indexRel; TYPE_2__* memtuples; TYPE_5__* sortKeys; int sortcontext; int tuplecontext; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_16__ {void* (* abbrev_converter ) (void*,TYPE_5__*) ;} ;
struct TYPE_15__ {int t_tid; } ;
struct TYPE_14__ {scalar_t__ isnull1; void* datum1; TYPE_3__* tuple; } ;
typedef TYPE_2__ SortTuple ;
typedef int Relation ;
typedef int MemoryContext ;
typedef int * ItemPointer ;
typedef TYPE_3__* IndexTuple ;
typedef void* Datum ;


 int GetMemoryChunkSpace (TYPE_3__*) ;
 int MemoryContextSwitchTo (int ) ;
 int RelationGetDescr (int ) ;
 int USEMEM (TYPE_1__*,int ) ;
 int consider_abort_common (TYPE_1__*) ;
 TYPE_3__* index_form_tuple (int ,void**,int*) ;
 void* index_getattr (TYPE_3__*,int,int ,scalar_t__*) ;
 int puttuple_common (TYPE_1__*,TYPE_2__*) ;
 void* stub1 (void*,TYPE_5__*) ;

void
tuplesort_putindextuplevalues(Tuplesortstate *state, Relation rel,
         ItemPointer self, Datum *values,
         bool *isnull)
{
 MemoryContext oldcontext = MemoryContextSwitchTo(state->tuplecontext);
 SortTuple stup;
 Datum original;
 IndexTuple tuple;

 stup.tuple = index_form_tuple(RelationGetDescr(rel), values, isnull);
 tuple = ((IndexTuple) stup.tuple);
 tuple->t_tid = *self;
 USEMEM(state, GetMemoryChunkSpace(stup.tuple));

 original = index_getattr(tuple,
        1,
        RelationGetDescr(state->indexRel),
        &stup.isnull1);

 MemoryContextSwitchTo(state->sortcontext);

 if (!state->sortKeys || !state->sortKeys->abbrev_converter || stup.isnull1)
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

   tuple = mtup->tuple;
   mtup->datum1 = index_getattr(tuple,
           1,
           RelationGetDescr(state->indexRel),
           &mtup->isnull1);
  }
 }

 puttuple_common(state, &stup);

 MemoryContextSwitchTo(oldcontext);
}
