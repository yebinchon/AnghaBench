
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {scalar_t__ state; scalar_t__ parallelModeLevel; scalar_t__ maxChildXids; scalar_t__ nChildXids; int * childXids; scalar_t__ gucNestLevel; scalar_t__ nestingLevel; int subTransactionId; void* fullTransactionId; int * curTransactionOwner; } ;


 int AtCleanup_Memory () ;
 int AtCleanup_Portals () ;
 int AtEOXact_Snapshot (int,int) ;
 int * CurTransactionResourceOwner ;
 int * CurrentResourceOwner ;
 TYPE_1__* CurrentTransactionState ;
 int FATAL ;
 void* InvalidFullTransactionId ;
 int InvalidSubTransactionId ;
 int ResourceOwnerDelete (int *) ;
 scalar_t__ TRANS_ABORT ;
 scalar_t__ TRANS_DEFAULT ;
 int * TopTransactionResourceOwner ;
 int TransStateAsString (scalar_t__) ;
 void* XactTopFullTransactionId ;
 int elog (int ,char*,int ) ;
 scalar_t__ nParallelCurrentXids ;

__attribute__((used)) static void
CleanupTransaction(void)
{
 TransactionState s = CurrentTransactionState;




 if (s->state != TRANS_ABORT)
  elog(FATAL, "CleanupTransaction: unexpected state %s",
    TransStateAsString(s->state));




 AtCleanup_Portals();
 AtEOXact_Snapshot(0, 1);

 CurrentResourceOwner = ((void*)0);
 if (TopTransactionResourceOwner)
  ResourceOwnerDelete(TopTransactionResourceOwner);
 s->curTransactionOwner = ((void*)0);
 CurTransactionResourceOwner = ((void*)0);
 TopTransactionResourceOwner = ((void*)0);

 AtCleanup_Memory();

 s->fullTransactionId = InvalidFullTransactionId;
 s->subTransactionId = InvalidSubTransactionId;
 s->nestingLevel = 0;
 s->gucNestLevel = 0;
 s->childXids = ((void*)0);
 s->nChildXids = 0;
 s->maxChildXids = 0;
 s->parallelModeLevel = 0;

 XactTopFullTransactionId = InvalidFullTransactionId;
 nParallelCurrentXids = 0;





 s->state = TRANS_DEFAULT;
}
