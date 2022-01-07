
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sortcontext; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_7__ {int * tuple; } ;
typedef TYPE_2__ SortTuple ;
typedef int MemoryContext ;
typedef int * HeapTuple ;


 int MemoryContextSwitchTo (int ) ;
 int tuplesort_gettuple_common (TYPE_1__*,int,TYPE_2__*) ;

HeapTuple
tuplesort_getheaptuple(Tuplesortstate *state, bool forward)
{
 MemoryContext oldcontext = MemoryContextSwitchTo(state->sortcontext);
 SortTuple stup;

 if (!tuplesort_gettuple_common(state, forward, &stup))
  stup.tuple = ((void*)0);

 MemoryContextSwitchTo(oldcontext);

 return stup.tuple;
}
