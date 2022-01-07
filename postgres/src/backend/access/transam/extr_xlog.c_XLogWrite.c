
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef scalar_t__ pg_time_t ;
struct TYPE_7__ {int Write; int Flush; } ;
typedef TYPE_2__ XLogwrtRqst ;
typedef int XLogRecPtr ;
struct TYPE_9__ {int Write; int Flush; } ;
struct TYPE_6__ {int Write; int Flush; } ;
struct TYPE_8__ {int* xlblocks; int XLogCacheBlck; char* pages; int lastSegSwitchLSN; int info_lck; TYPE_1__ LogwrtRqst; TYPE_5__ LogwrtResult; scalar_t__ lastSegSwitchTime; } ;
typedef int Size ;


 int Assert (int) ;
 int CHECKPOINT_CAUSE_XLOG ;
 scalar_t__ CritSectionCount ;
 scalar_t__ EINTR ;
 int GetRedoRecPtr () ;
 scalar_t__ IsUnderPostmaster ;
 TYPE_5__ LogwrtResult ;
 int NextBufIdx (int) ;
 int PANIC ;
 int RequestCheckpoint (int ) ;
 scalar_t__ SYNC_METHOD_OPEN ;
 scalar_t__ SYNC_METHOD_OPEN_DSYNC ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int ThisTimeLineID ;
 int WAIT_EVENT_WAL_WRITE ;
 int WalSndWakeupRequest () ;
 int XLByteInPrevSeg (int,int ,scalar_t__) ;
 int XLByteToPrevSeg (int,int ,scalar_t__) ;
 int XLOG_BLCKSZ ;
 int XLogArchiveNotifySeg (int ) ;
 scalar_t__ XLogArchivingActive () ;
 scalar_t__ XLogCheckpointNeeded (int ) ;
 TYPE_4__* XLogCtl ;
 int XLogFileClose () ;
 scalar_t__ XLogFileInit (int ,int*,int) ;
 int XLogFileNameP (int ,int ) ;
 scalar_t__ XLogFileOpen (int ) ;
 int XLogRecPtrToBufIdx (int) ;
 scalar_t__ XLogSegmentOffset (int,scalar_t__) ;
 int elog (int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ,scalar_t__,int) ;
 scalar_t__ errno ;
 int issue_xlog_fsync (scalar_t__,int ) ;
 scalar_t__ openLogFile ;
 int openLogSegNo ;
 int pg_pwrite (scalar_t__,char*,int,scalar_t__) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 scalar_t__ sync_method ;
 scalar_t__ time (int *) ;
 scalar_t__ wal_segment_size ;

__attribute__((used)) static void
XLogWrite(XLogwrtRqst WriteRqst, bool flexible)
{
 bool ispartialpage;
 bool last_iteration;
 bool finishing_seg;
 bool use_existent;
 int curridx;
 int npages;
 int startidx;
 uint32 startoffset;


 Assert(CritSectionCount > 0);




 LogwrtResult = XLogCtl->LogwrtResult;
 npages = 0;
 startidx = 0;
 startoffset = 0;






 curridx = XLogRecPtrToBufIdx(LogwrtResult.Write);

 while (LogwrtResult.Write < WriteRqst.Write)
 {





  XLogRecPtr EndPtr = XLogCtl->xlblocks[curridx];

  if (LogwrtResult.Write >= EndPtr)
   elog(PANIC, "xlog write request %X/%X is past end of log %X/%X",
     (uint32) (LogwrtResult.Write >> 32),
     (uint32) LogwrtResult.Write,
     (uint32) (EndPtr >> 32), (uint32) EndPtr);


  LogwrtResult.Write = EndPtr;
  ispartialpage = WriteRqst.Write < LogwrtResult.Write;

  if (!XLByteInPrevSeg(LogwrtResult.Write, openLogSegNo,
        wal_segment_size))
  {




   Assert(npages == 0);
   if (openLogFile >= 0)
    XLogFileClose();
   XLByteToPrevSeg(LogwrtResult.Write, openLogSegNo,
       wal_segment_size);


   use_existent = 1;
   openLogFile = XLogFileInit(openLogSegNo, &use_existent, 1);
  }


  if (openLogFile < 0)
  {
   XLByteToPrevSeg(LogwrtResult.Write, openLogSegNo,
       wal_segment_size);
   openLogFile = XLogFileOpen(openLogSegNo);
  }


  if (npages == 0)
  {

   startidx = curridx;
   startoffset = XLogSegmentOffset(LogwrtResult.Write - XLOG_BLCKSZ,
           wal_segment_size);
  }
  npages++;







  last_iteration = WriteRqst.Write <= LogwrtResult.Write;

  finishing_seg = !ispartialpage &&
   (startoffset + npages * XLOG_BLCKSZ) >= wal_segment_size;

  if (last_iteration ||
   curridx == XLogCtl->XLogCacheBlck ||
   finishing_seg)
  {
   char *from;
   Size nbytes;
   Size nleft;
   int written;


   from = XLogCtl->pages + startidx * (Size) XLOG_BLCKSZ;
   nbytes = npages * (Size) XLOG_BLCKSZ;
   nleft = nbytes;
   do
   {
    errno = 0;
    pgstat_report_wait_start(WAIT_EVENT_WAL_WRITE);
    written = pg_pwrite(openLogFile, from, nleft, startoffset);
    pgstat_report_wait_end();
    if (written <= 0)
    {
     if (errno == EINTR)
      continue;
     ereport(PANIC,
       (errcode_for_file_access(),
        errmsg("could not write to log file %s "
         "at offset %u, length %zu: %m",
         XLogFileNameP(ThisTimeLineID, openLogSegNo),
         startoffset, nleft)));
    }
    nleft -= written;
    from += written;
    startoffset += written;
   } while (nleft > 0);

   npages = 0;
   if (finishing_seg)
   {
    issue_xlog_fsync(openLogFile, openLogSegNo);


    WalSndWakeupRequest();

    LogwrtResult.Flush = LogwrtResult.Write;

    if (XLogArchivingActive())
     XLogArchiveNotifySeg(openLogSegNo);

    XLogCtl->lastSegSwitchTime = (pg_time_t) time(((void*)0));
    XLogCtl->lastSegSwitchLSN = LogwrtResult.Flush;
    if (IsUnderPostmaster && XLogCheckpointNeeded(openLogSegNo))
    {
     (void) GetRedoRecPtr();
     if (XLogCheckpointNeeded(openLogSegNo))
      RequestCheckpoint(CHECKPOINT_CAUSE_XLOG);
    }
   }
  }

  if (ispartialpage)
  {

   LogwrtResult.Write = WriteRqst.Write;
   break;
  }
  curridx = NextBufIdx(curridx);


  if (flexible && npages == 0)
   break;
 }

 Assert(npages == 0);




 if (LogwrtResult.Flush < WriteRqst.Flush &&
  LogwrtResult.Flush < LogwrtResult.Write)

 {





  if (sync_method != SYNC_METHOD_OPEN &&
   sync_method != SYNC_METHOD_OPEN_DSYNC)
  {
   if (openLogFile >= 0 &&
    !XLByteInPrevSeg(LogwrtResult.Write, openLogSegNo,
         wal_segment_size))
    XLogFileClose();
   if (openLogFile < 0)
   {
    XLByteToPrevSeg(LogwrtResult.Write, openLogSegNo,
        wal_segment_size);
    openLogFile = XLogFileOpen(openLogSegNo);
   }

   issue_xlog_fsync(openLogFile, openLogSegNo);
  }


  WalSndWakeupRequest();

  LogwrtResult.Flush = LogwrtResult.Write;
 }
 {
  SpinLockAcquire(&XLogCtl->info_lck);
  XLogCtl->LogwrtResult = LogwrtResult;
  if (XLogCtl->LogwrtRqst.Write < LogwrtResult.Write)
   XLogCtl->LogwrtRqst.Write = LogwrtResult.Write;
  if (XLogCtl->LogwrtRqst.Flush < LogwrtResult.Flush)
   XLogCtl->LogwrtRqst.Flush = LogwrtResult.Flush;
  SpinLockRelease(&XLogCtl->info_lck);
 }
}
