
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_6__ {scalar_t__ Flush; } ;
struct TYPE_5__ {scalar_t__ walwriterLatch; } ;
struct TYPE_4__ {int WalWriterSleeping; scalar_t__ asyncXactLSN; int info_lck; TYPE_3__ LogwrtResult; } ;


 TYPE_3__ LogwrtResult ;
 TYPE_2__* ProcGlobal ;
 int SetLatch (scalar_t__) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ XLOG_BLCKSZ ;
 TYPE_1__* XLogCtl ;

void
XLogSetAsyncXactLSN(XLogRecPtr asyncXactLSN)
{
 XLogRecPtr WriteRqstPtr = asyncXactLSN;
 bool sleeping;

 SpinLockAcquire(&XLogCtl->info_lck);
 LogwrtResult = XLogCtl->LogwrtResult;
 sleeping = XLogCtl->WalWriterSleeping;
 if (XLogCtl->asyncXactLSN < asyncXactLSN)
  XLogCtl->asyncXactLSN = asyncXactLSN;
 SpinLockRelease(&XLogCtl->info_lck);






 if (!sleeping)
 {

  WriteRqstPtr -= WriteRqstPtr % XLOG_BLCKSZ;


  if (WriteRqstPtr <= LogwrtResult.Flush)
   return;
 }






 if (ProcGlobal->walwriterLatch)
  SetLatch(ProcGlobal->walwriterLatch);
}
