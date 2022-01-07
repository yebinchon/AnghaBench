
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int* tp_fib; int* tp_dummy; int* tp_tapenum; size_t tapeRange; int Level; int status; scalar_t__ destTape; scalar_t__* tp_runs; scalar_t__ currentRun; int worker; TYPE_1__* shared; int tapeset; int ru_start; int allowedMem; } ;
typedef TYPE_2__ Tuplesortstate ;
struct TYPE_7__ {int fileset; } ;


 int Assert (int) ;
 int LEADER (TYPE_2__*) ;
 int LOG ;
 int LogicalTapeSetCreate (int,int *,int *,int ) ;
 int MINORDER ;
 int TSS_BUILDRUNS ;
 int WORKER (TYPE_2__*) ;
 int elog (int ,char*,int ,int,int ) ;
 int inittapestate (TYPE_2__*,int) ;
 int pg_rusage_show (int *) ;
 scalar_t__ trace_sort ;
 int tuplesort_merge_order (int ) ;

__attribute__((used)) static void
inittapes(Tuplesortstate *state, bool mergeruns)
{
 int maxTapes,
    j;

 Assert(!LEADER(state));

 if (mergeruns)
 {

  maxTapes = tuplesort_merge_order(state->allowedMem) + 1;
 }
 else
 {

  Assert(WORKER(state));
  maxTapes = MINORDER + 1;
 }
 inittapestate(state, maxTapes);
 state->tapeset =
  LogicalTapeSetCreate(maxTapes, ((void*)0),
        state->shared ? &state->shared->fileset : ((void*)0),
        state->worker);

 state->currentRun = 0;




 for (j = 0; j < maxTapes; j++)
 {
  state->tp_fib[j] = 1;
  state->tp_runs[j] = 0;
  state->tp_dummy[j] = 1;
  state->tp_tapenum[j] = j;
 }
 state->tp_fib[state->tapeRange] = 0;
 state->tp_dummy[state->tapeRange] = 0;

 state->Level = 1;
 state->destTape = 0;

 state->status = TSS_BUILDRUNS;
}
