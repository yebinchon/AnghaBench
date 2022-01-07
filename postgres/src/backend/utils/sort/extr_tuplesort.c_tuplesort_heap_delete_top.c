
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ memtupcount; int * memtuples; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int SortTuple ;


 int tuplesort_heap_replace_top (TYPE_1__*,int *) ;

__attribute__((used)) static void
tuplesort_heap_delete_top(Tuplesortstate *state)
{
 SortTuple *memtuples = state->memtuples;
 SortTuple *tuple;

 if (--state->memtupcount <= 0)
  return;





 tuple = &memtuples[state->memtupcount];
 tuplesort_heap_replace_top(state, tuple);
}
