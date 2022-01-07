
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ blockState; int fullTransactionId; } ;
struct TYPE_3__ {int * parallelCurrentXids; int nParallelCurrentXids; int currentCommandId; int currentFullTransactionId; int topFullTransactionId; int xactDeferrable; int xactIsoLevel; } ;
typedef TYPE_1__ SerializedTransactionState ;


 int Assert (int) ;
 TYPE_2__* CurrentTransactionState ;
 int * ParallelCurrentXids ;
 int StartTransaction () ;
 scalar_t__ TBLOCK_DEFAULT ;
 scalar_t__ TBLOCK_PARALLEL_INPROGRESS ;
 int XactDeferrable ;
 int XactIsoLevel ;
 int XactTopFullTransactionId ;
 int currentCommandId ;
 int nParallelCurrentXids ;

void
StartParallelWorkerTransaction(char *tstatespace)
{
 SerializedTransactionState *tstate;

 Assert(CurrentTransactionState->blockState == TBLOCK_DEFAULT);
 StartTransaction();

 tstate = (SerializedTransactionState *) tstatespace;
 XactIsoLevel = tstate->xactIsoLevel;
 XactDeferrable = tstate->xactDeferrable;
 XactTopFullTransactionId = tstate->topFullTransactionId;
 CurrentTransactionState->fullTransactionId =
  tstate->currentFullTransactionId;
 currentCommandId = tstate->currentCommandId;
 nParallelCurrentXids = tstate->nParallelCurrentXids;
 ParallelCurrentXids = &tstate->parallelCurrentXids[0];

 CurrentTransactionState->blockState = TBLOCK_PARALLEL_INPROGRESS;
}
