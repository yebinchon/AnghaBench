
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int memtupcount; int memtupsize; scalar_t__ status; scalar_t__ currentRun; size_t destTape; int ru_start; int worker; int * tp_dummy; int * tp_runs; int * tp_tapenum; int tuplecontext; int * memtuples; } ;
typedef TYPE_1__ Tuplesortstate ;


 int Assert (int) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 scalar_t__ INT_MAX ;
 int LACKMEM (TYPE_1__*) ;
 int LOG ;
 int MemoryContextReset (int ) ;
 scalar_t__ TSS_BUILDRUNS ;
 int WRITETUP (TYPE_1__*,int ,int *) ;
 int elog (int ,char*,int ,scalar_t__,size_t,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__) ;
 int markrunend (TYPE_1__*,int ) ;
 int pg_rusage_show (int *) ;
 int selectnewtape (TYPE_1__*) ;
 scalar_t__ trace_sort ;
 int tuplesort_sort_memtuples (TYPE_1__*) ;

__attribute__((used)) static void
dumptuples(Tuplesortstate *state, bool alltuples)
{
 int memtupwrite;
 int i;





 if (state->memtupcount < state->memtupsize && !LACKMEM(state) &&
  !alltuples)
  return;
 Assert(state->status == TSS_BUILDRUNS);





 if (state->currentRun == INT_MAX)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("cannot have more than %d runs for an external sort",
      INT_MAX)));

 state->currentRun++;
 tuplesort_sort_memtuples(state);
 memtupwrite = state->memtupcount;
 for (i = 0; i < memtupwrite; i++)
 {
  WRITETUP(state, state->tp_tapenum[state->destTape],
     &state->memtuples[i]);
  state->memtupcount--;
 }
 MemoryContextReset(state->tuplecontext);

 markrunend(state, state->tp_tapenum[state->destTape]);
 state->tp_runs[state->destTape]++;
 state->tp_dummy[state->destTape]--;
 if (!alltuples)
  selectnewtape(state);
}
