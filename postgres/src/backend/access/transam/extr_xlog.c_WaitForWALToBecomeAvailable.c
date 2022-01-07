
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int XLogRecPtr ;
typedef void* TimestampTz ;
typedef int TimeLineID ;
struct TYPE_4__ {int ThisTimeLineID; } ;
struct TYPE_6__ {TYPE_1__ checkPointCopy; } ;
struct TYPE_5__ {int recoveryWakeupLatch; } ;


 int Assert (int) ;
 int CheckForStandbyTrigger () ;
 TYPE_3__* ControlFile ;
 int DEBUG2 ;
 int ERROR ;
 void* GetCurrentTimestamp () ;
 int GetWalRcvWriteRecPtr (int*,int *) ;
 int HandleStartupProcInterrupts () ;
 scalar_t__ InArchiveRecovery ;
 int PANIC ;
 int PrimaryConnInfo ;
 int PrimarySlotName ;
 int RECOVERY_TARGET_TIMELINE_LATEST ;
 int RedoStartLSN ;
 int RequestXLogStreaming (int ,int,int ,int ) ;
 int ResetLatch (int *) ;
 int SetCurrentChunkStartTime (void*) ;
 int ShutdownWalRcv () ;
 int StandbyMode ;
 int TimestampDifference (void*,void*,long*,int*) ;
 int TimestampDifferenceExceeds (void*,void*,int ) ;
 int WAIT_EVENT_RECOVERY_WAL_ALL ;
 int WAIT_EVENT_RECOVERY_WAL_STREAM ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_TIMEOUT ;
 int WaitLatch (int *,int,long,int ) ;
 int WalRcvForceReply () ;
 int WalRcvStreaming () ;
 int XLOG_FROM_ANY ;



 TYPE_2__* XLogCtl ;
 int XLogFileRead (int ,int ,int ,int const,int) ;
 int XLogFileReadAnyTLI (int ,int ,int) ;
 int XLogReceiptSource ;
 void* XLogReceiptTime ;
 int close (int) ;
 int curFileTLI ;
 int currentSource ;
 int elog (int ,char*,int,...) ;
 int expectedTLEs ;
 int lastSourceFailed ;
 int readFile ;
 int readSegNo ;
 int readSource ;
 int readTimeLineHistory (int ) ;
 int receiveTLI ;
 int receivedUpto ;
 int recoveryTargetTimeLineGoal ;
 int rescanLatestTimeLine () ;
 int strcmp (int ,char*) ;
 int tliOfPointInHistory (int,int ) ;
 int wal_retrieve_retry_interval ;
 int * xlogSourceNames ;

__attribute__((used)) static bool
WaitForWALToBecomeAvailable(XLogRecPtr RecPtr, bool randAccess,
       bool fetching_ckpt, XLogRecPtr tliRecPtr)
{
 static TimestampTz last_fail_time = 0;
 TimestampTz now;
 bool streaming_reply_sent = 0;
 if (!InArchiveRecovery)
  currentSource = 129;
 else if (currentSource == 0)
  currentSource = 130;

 for (;;)
 {
  int oldSource = currentSource;







  if (lastSourceFailed)
  {
   switch (currentSource)
   {
    case 130:
    case 129:







     if (StandbyMode && CheckForStandbyTrigger())
     {
      ShutdownWalRcv();
      return 0;
     }





     if (!StandbyMode)
      return 0;
     if (PrimaryConnInfo && strcmp(PrimaryConnInfo, "") != 0)
     {
      XLogRecPtr ptr;
      TimeLineID tli;

      if (fetching_ckpt)
      {
       ptr = RedoStartLSN;
       tli = ControlFile->checkPointCopy.ThisTimeLineID;
      }
      else
      {
       ptr = RecPtr;





       tli = tliOfPointInHistory(tliRecPtr, expectedTLEs);

       if (curFileTLI > 0 && tli < curFileTLI)
        elog(ERROR, "according to history file, WAL location %X/%X belongs to timeline %u, but previous recovered WAL file came from timeline %u",
          (uint32) (tliRecPtr >> 32),
          (uint32) tliRecPtr,
          tli, curFileTLI);
      }
      curFileTLI = tli;
      RequestXLogStreaming(tli, ptr, PrimaryConnInfo,
            PrimarySlotName);
      receivedUpto = 0;
     }






     currentSource = 128;
     break;

    case 128:
     Assert(StandbyMode);






     if (WalRcvStreaming())
      ShutdownWalRcv();





     if (recoveryTargetTimeLineGoal == RECOVERY_TARGET_TIMELINE_LATEST)
     {
      if (rescanLatestTimeLine())
      {
       currentSource = 130;
       break;
      }
     }
     now = GetCurrentTimestamp();
     if (!TimestampDifferenceExceeds(last_fail_time, now,
             wal_retrieve_retry_interval))
     {
      long secs,
         wait_time;
      int usecs;

      TimestampDifference(last_fail_time, now, &secs, &usecs);
      wait_time = wal_retrieve_retry_interval -
       (secs * 1000 + usecs / 1000);

      (void) WaitLatch(&XLogCtl->recoveryWakeupLatch,
           WL_LATCH_SET | WL_TIMEOUT |
           WL_EXIT_ON_PM_DEATH,
           wait_time,
           WAIT_EVENT_RECOVERY_WAL_STREAM);
      ResetLatch(&XLogCtl->recoveryWakeupLatch);
      now = GetCurrentTimestamp();
     }
     last_fail_time = now;
     currentSource = 130;
     break;

    default:
     elog(ERROR, "unexpected WAL source %d", currentSource);
   }
  }
  else if (currentSource == 129)
  {





   if (InArchiveRecovery)
    currentSource = 130;
  }

  if (currentSource != oldSource)
   elog(DEBUG2, "switched WAL source from %s to %s after %s",
     xlogSourceNames[oldSource], xlogSourceNames[currentSource],
     lastSourceFailed ? "failure" : "success");





  lastSourceFailed = 0;

  switch (currentSource)
  {
   case 130:
   case 129:

    if (readFile >= 0)
    {
     close(readFile);
     readFile = -1;
    }

    if (randAccess)
     curFileTLI = 0;





    readFile = XLogFileReadAnyTLI(readSegNo, DEBUG2,
             currentSource == 130 ? XLOG_FROM_ANY :
             currentSource);
    if (readFile >= 0)
     return 1;




    lastSourceFailed = 1;
    break;

   case 128:
    {
     bool havedata;





     Assert(StandbyMode);




     if (!WalRcvStreaming())
     {
      lastSourceFailed = 1;
      break;
     }
     if (RecPtr < receivedUpto)
      havedata = 1;
     else
     {
      XLogRecPtr latestChunkStart;

      receivedUpto = GetWalRcvWriteRecPtr(&latestChunkStart, &receiveTLI);
      if (RecPtr < receivedUpto && receiveTLI == curFileTLI)
      {
       havedata = 1;
       if (latestChunkStart <= RecPtr)
       {
        XLogReceiptTime = GetCurrentTimestamp();
        SetCurrentChunkStartTime(XLogReceiptTime);
       }
      }
      else
       havedata = 0;
     }
     if (havedata)
     {
      if (readFile < 0)
      {
       if (!expectedTLEs)
        expectedTLEs = readTimeLineHistory(receiveTLI);
       readFile = XLogFileRead(readSegNo, PANIC,
             receiveTLI,
             128, 0);
       Assert(readFile >= 0);
      }
      else
      {

       readSource = 128;
       XLogReceiptSource = 128;
       return 1;
      }
      break;
     }





     if (CheckForStandbyTrigger())
     {
      lastSourceFailed = 1;
      break;
     }
     if (!streaming_reply_sent)
     {
      WalRcvForceReply();
      streaming_reply_sent = 1;
     }






     (void) WaitLatch(&XLogCtl->recoveryWakeupLatch,
          WL_LATCH_SET | WL_TIMEOUT |
          WL_EXIT_ON_PM_DEATH,
          5000L, WAIT_EVENT_RECOVERY_WAL_ALL);
     ResetLatch(&XLogCtl->recoveryWakeupLatch);
     break;
    }

   default:
    elog(ERROR, "unexpected WAL source %d", currentSource);
  }





  HandleStartupProcInterrupts();
 }

 return 0;
}
