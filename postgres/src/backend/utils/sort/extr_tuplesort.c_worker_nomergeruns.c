
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int result_tape; int* tp_tapenum; size_t destTape; } ;
typedef TYPE_1__ Tuplesortstate ;


 int Assert (int) ;
 int WORKER (TYPE_1__*) ;
 int worker_freeze_result_tape (TYPE_1__*) ;

__attribute__((used)) static void
worker_nomergeruns(Tuplesortstate *state)
{
 Assert(WORKER(state));
 Assert(state->result_tape == -1);

 state->result_tape = state->tp_tapenum[state->destTape];
 worker_freeze_result_tape(state);
}
