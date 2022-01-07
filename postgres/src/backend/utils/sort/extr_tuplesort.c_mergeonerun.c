
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_15__ {int* tp_tapenum; size_t tapeRange; scalar_t__ memtupcount; int ru_start; int activeTapes; int worker; int * tp_runs; TYPE_12__* memtuples; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_16__ {int srctape; } ;
struct TYPE_14__ {int srctape; scalar_t__ tuple; } ;
typedef TYPE_2__ SortTuple ;


 int LOG ;
 int RELEASE_SLAB_SLOT (TYPE_1__*,scalar_t__) ;
 int WRITETUP (TYPE_1__*,int,TYPE_12__*) ;
 int beginmerge (TYPE_1__*) ;
 int elog (int ,char*,int ,int ,int ) ;
 int markrunend (TYPE_1__*,int) ;
 scalar_t__ mergereadnext (TYPE_1__*,int,TYPE_2__*) ;
 int pg_rusage_show (int *) ;
 scalar_t__ trace_sort ;
 int tuplesort_heap_delete_top (TYPE_1__*) ;
 int tuplesort_heap_replace_top (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void
mergeonerun(Tuplesortstate *state)
{
 int destTape = state->tp_tapenum[state->tapeRange];
 int srcTape;





 beginmerge(state);






 while (state->memtupcount > 0)
 {
  SortTuple stup;


  srcTape = state->memtuples[0].srctape;
  WRITETUP(state, destTape, &state->memtuples[0]);


  if (state->memtuples[0].tuple)
   RELEASE_SLAB_SLOT(state, state->memtuples[0].tuple);





  if (mergereadnext(state, srcTape, &stup))
  {
   stup.srctape = srcTape;
   tuplesort_heap_replace_top(state, &stup);
  }
  else
   tuplesort_heap_delete_top(state);
 }





 markrunend(state, destTape);
 state->tp_runs[state->tapeRange]++;






}
