
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int memtupcount; int comparetup; int memtuples; int * onlyKey; } ;
typedef TYPE_1__ Tuplesortstate ;


 int Assert (int) ;
 int LEADER (TYPE_1__*) ;
 int qsort_ssup (int ,int,int *) ;
 int qsort_tuple (int ,int,int ,TYPE_1__*) ;

__attribute__((used)) static void
tuplesort_sort_memtuples(Tuplesortstate *state)
{
 Assert(!LEADER(state));

 if (state->memtupcount > 1)
 {

  if (state->onlyKey != ((void*)0))
   qsort_ssup(state->memtuples, state->memtupcount,
        state->onlyKey);
  else
   qsort_tuple(state->memtuples,
      state->memtupcount,
      state->comparetup,
      state);
 }
}
