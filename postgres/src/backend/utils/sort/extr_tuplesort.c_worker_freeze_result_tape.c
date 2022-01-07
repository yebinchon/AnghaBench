
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int result_tape; scalar_t__ memtupcount; size_t worker; int tapeset; scalar_t__ memtupsize; int * memtuples; TYPE_2__* shared; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int TapeShare ;
struct TYPE_6__ {int mutex; int workersFinished; int * tapes; } ;
typedef TYPE_2__ Sharedsort ;


 int Assert (int) ;
 int LogicalTapeFreeze (int ,int,int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WORKER (TYPE_1__*) ;
 int pfree (int *) ;

__attribute__((used)) static void
worker_freeze_result_tape(Tuplesortstate *state)
{
 Sharedsort *shared = state->shared;
 TapeShare output;

 Assert(WORKER(state));
 Assert(state->result_tape != -1);
 Assert(state->memtupcount == 0);





 pfree(state->memtuples);

 state->memtuples = ((void*)0);
 state->memtupsize = 0;





 LogicalTapeFreeze(state->tapeset, state->result_tape, &output);


 SpinLockAcquire(&shared->mutex);
 shared->tapes[state->worker] = output;
 shared->workersFinished++;
 SpinLockRelease(&shared->mutex);
}
