
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* sortKeys; int sortcontext; } ;
typedef TYPE_2__ Tuplesortstate ;
typedef int TupleTableSlot ;
struct TYPE_9__ {int * tuple; int datum1; } ;
struct TYPE_7__ {scalar_t__ abbrev_converter; } ;
typedef TYPE_3__ SortTuple ;
typedef int MinimalTuple ;
typedef int MemoryContext ;
typedef int Datum ;


 int ExecClearTuple (int *) ;
 int ExecStoreMinimalTuple (int ,int *,int) ;
 int MemoryContextSwitchTo (int ) ;
 int * heap_copy_minimal_tuple (int ) ;
 int tuplesort_gettuple_common (TYPE_2__*,int,TYPE_3__*) ;

bool
tuplesort_gettupleslot(Tuplesortstate *state, bool forward, bool copy,
        TupleTableSlot *slot, Datum *abbrev)
{
 MemoryContext oldcontext = MemoryContextSwitchTo(state->sortcontext);
 SortTuple stup;

 if (!tuplesort_gettuple_common(state, forward, &stup))
  stup.tuple = ((void*)0);

 MemoryContextSwitchTo(oldcontext);

 if (stup.tuple)
 {

  if (state->sortKeys->abbrev_converter && abbrev)
   *abbrev = stup.datum1;

  if (copy)
   stup.tuple = heap_copy_minimal_tuple((MinimalTuple) stup.tuple);

  ExecStoreMinimalTuple((MinimalTuple) stup.tuple, slot, copy);
  return 1;
 }
 else
 {
  ExecClearTuple(slot);
  return 0;
 }
}
