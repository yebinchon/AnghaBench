
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recoveryConflictPending; } ;
typedef int ProcSignalReason ;


 int Assert (int) ;
 int FATAL ;
 int HoldingBufferPinThatDelaysRecovery () ;
 int InterruptPending ;
 int IsAbortedTransactionBlockState () ;
 int IsSubTransaction () ;
 int IsTransactionOrTransactionBlock () ;
 int IsWaitingForLock () ;
 int MyLatch ;
 TYPE_1__* MyProc ;






 int ProcDiePending ;
 int QueryCancelPending ;
 int RecoveryConflictPending ;
 int RecoveryConflictReason ;
 int RecoveryConflictRetryable ;
 int SetLatch (int ) ;
 int elog (int ,char*,int) ;
 int errno ;
 int proc_exit_inprogress ;

void
RecoveryConflictInterrupt(ProcSignalReason reason)
{
 int save_errno = errno;




 if (!proc_exit_inprogress)
 {
  RecoveryConflictReason = reason;
  switch (reason)
  {
   case 129:




    if (!IsWaitingForLock())
     return;




   case 133:





    if (!HoldingBufferPinThatDelaysRecovery())
     return;

    MyProc->recoveryConflictPending = 1;




   case 131:
   case 128:
   case 130:




    if (!IsTransactionOrTransactionBlock())
     return;
    if (!IsSubTransaction())
    {





     if (IsAbortedTransactionBlockState())
      return;

     RecoveryConflictPending = 1;
     QueryCancelPending = 1;
     InterruptPending = 1;
     break;
    }




   case 132:
    RecoveryConflictPending = 1;
    ProcDiePending = 1;
    InterruptPending = 1;
    break;

   default:
    elog(FATAL, "unrecognized conflict mode: %d",
      (int) reason);
  }

  Assert(RecoveryConflictPending && (QueryCancelPending || ProcDiePending));







  if (reason == 132)
   RecoveryConflictRetryable = 0;
 }






 SetLatch(MyLatch);

 errno = save_errno;
}
