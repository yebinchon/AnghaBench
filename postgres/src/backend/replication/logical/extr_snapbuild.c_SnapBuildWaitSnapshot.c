
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xcnt; int * xids; } ;
typedef TYPE_1__ xl_running_xacts ;
typedef int TransactionId ;


 int ERROR ;
 int LogStandbySnapshot () ;
 int RecoveryInProgress () ;
 scalar_t__ TransactionIdFollows (int ,int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 int XLTW_None ;
 int XactLockTableWait (int ,int *,int *,int ) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
SnapBuildWaitSnapshot(xl_running_xacts *running, TransactionId cutoff)
{
 int off;

 for (off = 0; off < running->xcnt; off++)
 {
  TransactionId xid = running->xids[off];






  if (TransactionIdIsCurrentTransactionId(xid))
   elog(ERROR, "waiting for ourselves");

  if (TransactionIdFollows(xid, cutoff))
   continue;

  XactLockTableWait(xid, ((void*)0), ((void*)0), XLTW_None);
 }







 if (!RecoveryInProgress())
 {
  LogStandbySnapshot();
 }
}
