
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_7__ {int Write; int Flush; } ;
typedef TYPE_2__ XLogwrtRqst ;
typedef int XLogRecPtr ;
struct TYPE_9__ {int Flush; int Write; } ;
struct TYPE_6__ {int Write; } ;
struct TYPE_8__ {TYPE_5__ LogwrtResult; int info_lck; TYPE_1__ LogwrtRqst; } ;


 scalar_t__ CommitDelay ;
 int CommitSiblings ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int LOG ;
 int LWLockAcquireOrWait (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_5__ LogwrtResult ;
 scalar_t__ MinimumActiveBackends (int ) ;
 int START_CRIT_SECTION () ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int UpdateMinRecoveryPoint (int,int) ;
 int WALWriteLock ;
 int WaitXLogInsertionsToFinish (int) ;
 int WalSndWakeupProcessRequests () ;
 scalar_t__ XLOG_DEBUG ;
 TYPE_4__* XLogCtl ;
 int XLogInsertAllowed () ;
 int XLogWrite (TYPE_2__,int) ;
 int elog (int ,char*,int ,int ,int ,int ,...) ;
 scalar_t__ enableFsync ;
 int pg_usleep (scalar_t__) ;

void
XLogFlush(XLogRecPtr record)
{
 XLogRecPtr WriteRqstPtr;
 XLogwrtRqst WriteRqst;
 if (!XLogInsertAllowed())
 {
  UpdateMinRecoveryPoint(record, 0);
  return;
 }


 if (record <= LogwrtResult.Flush)
  return;
 START_CRIT_SECTION();
 WriteRqstPtr = record;





 for (;;)
 {
  XLogRecPtr insertpos;


  SpinLockAcquire(&XLogCtl->info_lck);
  if (WriteRqstPtr < XLogCtl->LogwrtRqst.Write)
   WriteRqstPtr = XLogCtl->LogwrtRqst.Write;
  LogwrtResult = XLogCtl->LogwrtResult;
  SpinLockRelease(&XLogCtl->info_lck);


  if (record <= LogwrtResult.Flush)
   break;





  insertpos = WaitXLogInsertionsToFinish(WriteRqstPtr);
  if (!LWLockAcquireOrWait(WALWriteLock, LW_EXCLUSIVE))
  {





   continue;
  }


  LogwrtResult = XLogCtl->LogwrtResult;
  if (record <= LogwrtResult.Flush)
  {
   LWLockRelease(WALWriteLock);
   break;
  }
  if (CommitDelay > 0 && enableFsync &&
   MinimumActiveBackends(CommitSiblings))
  {
   pg_usleep(CommitDelay);
   insertpos = WaitXLogInsertionsToFinish(insertpos);
  }


  WriteRqst.Write = insertpos;
  WriteRqst.Flush = insertpos;

  XLogWrite(WriteRqst, 0);

  LWLockRelease(WALWriteLock);

  break;
 }

 END_CRIT_SECTION();


 WalSndWakeupProcessRequests();
 if (LogwrtResult.Flush < record)
  elog(ERROR,
    "xlog flush request %X/%X is not satisfied --- flushed only to %X/%X",
    (uint32) (record >> 32), (uint32) record,
    (uint32) (LogwrtResult.Flush >> 32), (uint32) LogwrtResult.Flush);
}
