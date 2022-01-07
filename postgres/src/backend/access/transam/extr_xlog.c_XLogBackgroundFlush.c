
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int Write; int Flush; } ;
typedef TYPE_1__ XLogwrtRqst ;
typedef scalar_t__ TimestampTz ;
struct TYPE_7__ {int Flush; int Write; } ;
struct TYPE_6__ {int asyncXactLSN; TYPE_4__ LogwrtResult; int info_lck; TYPE_1__ LogwrtRqst; } ;


 int AdvanceXLInsertBuffer (int ,int) ;
 int END_CRIT_SECTION () ;
 scalar_t__ GetCurrentTimestamp () ;
 int InvalidXLogRecPtr ;
 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_4__ LogwrtResult ;
 scalar_t__ RecoveryInProgress () ;
 int START_CRIT_SECTION () ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ TimestampDifferenceExceeds (scalar_t__,scalar_t__,int ) ;
 int WALWriteLock ;
 int WaitXLogInsertionsToFinish (int) ;
 int WalSndWakeupProcessRequests () ;
 int WalWriterDelay ;
 int WalWriterFlushAfter ;
 int XLByteInPrevSeg (int,int ,int ) ;
 int XLOG_BLCKSZ ;
 scalar_t__ XLOG_DEBUG ;
 TYPE_3__* XLogCtl ;
 int XLogFileClose () ;
 int XLogWrite (TYPE_1__,int) ;
 int elog (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ openLogFile ;
 int openLogSegNo ;
 int wal_segment_size ;

bool
XLogBackgroundFlush(void)
{
 XLogwrtRqst WriteRqst;
 bool flexible = 1;
 static TimestampTz lastflush;
 TimestampTz now;
 int flushbytes;


 if (RecoveryInProgress())
  return 0;


 SpinLockAcquire(&XLogCtl->info_lck);
 LogwrtResult = XLogCtl->LogwrtResult;
 WriteRqst = XLogCtl->LogwrtRqst;
 SpinLockRelease(&XLogCtl->info_lck);


 WriteRqst.Write -= WriteRqst.Write % XLOG_BLCKSZ;


 if (WriteRqst.Write <= LogwrtResult.Flush)
 {
  SpinLockAcquire(&XLogCtl->info_lck);
  WriteRqst.Write = XLogCtl->asyncXactLSN;
  SpinLockRelease(&XLogCtl->info_lck);
  flexible = 0;
 }






 if (WriteRqst.Write <= LogwrtResult.Flush)
 {
  if (openLogFile >= 0)
  {
   if (!XLByteInPrevSeg(LogwrtResult.Write, openLogSegNo,
         wal_segment_size))
   {
    XLogFileClose();
   }
  }
  return 0;
 }





 now = GetCurrentTimestamp();
 flushbytes =
  WriteRqst.Write / XLOG_BLCKSZ - LogwrtResult.Flush / XLOG_BLCKSZ;

 if (WalWriterFlushAfter == 0 || lastflush == 0)
 {

  WriteRqst.Flush = WriteRqst.Write;
  lastflush = now;
 }
 else if (TimestampDifferenceExceeds(lastflush, now, WalWriterDelay))
 {





  WriteRqst.Flush = WriteRqst.Write;
  lastflush = now;
 }
 else if (flushbytes >= WalWriterFlushAfter)
 {

  WriteRqst.Flush = WriteRqst.Write;
  lastflush = now;
 }
 else
 {

  WriteRqst.Flush = 0;
 }
 START_CRIT_SECTION();


 WaitXLogInsertionsToFinish(WriteRqst.Write);
 LWLockAcquire(WALWriteLock, LW_EXCLUSIVE);
 LogwrtResult = XLogCtl->LogwrtResult;
 if (WriteRqst.Write > LogwrtResult.Write ||
  WriteRqst.Flush > LogwrtResult.Flush)
 {
  XLogWrite(WriteRqst, flexible);
 }
 LWLockRelease(WALWriteLock);

 END_CRIT_SECTION();


 WalSndWakeupProcessRequests();





 AdvanceXLInsertBuffer(InvalidXLogRecPtr, 1);






 return 1;
}
