
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sortcontext; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int TupleTableSlot ;
typedef int SortTuple ;
typedef int MemoryContext ;


 int COPYTUP (TYPE_1__*,int *,void*) ;
 int MemoryContextSwitchTo (int ) ;
 int puttuple_common (TYPE_1__*,int *) ;

void
tuplesort_puttupleslot(Tuplesortstate *state, TupleTableSlot *slot)
{
 MemoryContext oldcontext = MemoryContextSwitchTo(state->sortcontext);
 SortTuple stup;





 COPYTUP(state, &stup, (void *) slot);

 puttuple_common(state, &stup);

 MemoryContextSwitchTo(oldcontext);
}
