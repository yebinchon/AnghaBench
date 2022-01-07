
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nParticipants; int currentRun; int maxTapes; int* tp_fib; int* tp_runs; int* tp_dummy; int* tp_tapenum; size_t tapeRange; int Level; int status; scalar_t__ destTape; int worker; int tapeset; TYPE_2__* shared; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_7__ {int workersFinished; int fileset; int tapes; int mutex; } ;
typedef TYPE_2__ Sharedsort ;


 int Assert (int) ;
 int ERROR ;
 int LEADER (TYPE_1__*) ;
 int LogicalTapeSetCreate (int,int ,int *,int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int TSS_BUILDRUNS ;
 int elog (int ,char*) ;
 int inittapestate (TYPE_1__*,int) ;

__attribute__((used)) static void
leader_takeover_tapes(Tuplesortstate *state)
{
 Sharedsort *shared = state->shared;
 int nParticipants = state->nParticipants;
 int workersFinished;
 int j;

 Assert(LEADER(state));
 Assert(nParticipants >= 1);

 SpinLockAcquire(&shared->mutex);
 workersFinished = shared->workersFinished;
 SpinLockRelease(&shared->mutex);

 if (nParticipants != workersFinished)
  elog(ERROR, "cannot take over tapes before all workers finish");
 inittapestate(state, nParticipants + 1);
 state->tapeset = LogicalTapeSetCreate(nParticipants + 1, shared->tapes,
            &shared->fileset, state->worker);


 state->currentRun = nParticipants;
 for (j = 0; j < state->maxTapes; j++)
 {

  state->tp_fib[j] = 1;
  state->tp_runs[j] = 1;
  state->tp_dummy[j] = 0;
  state->tp_tapenum[j] = j;
 }

 state->tp_fib[state->tapeRange] = 0;
 state->tp_runs[state->tapeRange] = 0;
 state->tp_dummy[state->tapeRange] = 1;

 state->Level = 1;
 state->destTape = 0;

 state->status = TSS_BUILDRUNS;
}
