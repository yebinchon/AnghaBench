
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
typedef int XLogReaderState ;
typedef int TimestampTz ;
struct TYPE_2__ {int recoveryWakeupLatch; } ;


 int ArchiveRecoveryRequested ;
 scalar_t__ CheckForStandbyTrigger () ;
 int DEBUG2 ;
 int GetCurrentTimestamp () ;
 int HandleStartupProcInterrupts () ;
 scalar_t__ RM_XACT_ID ;
 int ResetLatch (int *) ;
 int TimestampDifference (int ,int ,long*,int*) ;
 int TimestampTzPlusMilliseconds (int ,scalar_t__) ;
 int WAIT_EVENT_RECOVERY_APPLY_DELAY ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_TIMEOUT ;
 int WaitLatch (int *,int,long,int ) ;
 int XLOG_XACT_COMMIT ;
 int XLOG_XACT_COMMIT_PREPARED ;
 int XLOG_XACT_OPMASK ;
 TYPE_1__* XLogCtl ;
 int XLogRecGetInfo (int *) ;
 scalar_t__ XLogRecGetRmid (int *) ;
 int elog (int ,char*,long,int) ;
 int getRecordTimestamp (int *,int *) ;
 int reachedConsistency ;
 int recoveryDelayUntilTime ;
 scalar_t__ recovery_min_apply_delay ;

__attribute__((used)) static bool
recoveryApplyDelay(XLogReaderState *record)
{
 uint8 xact_info;
 TimestampTz xtime;
 long secs;
 int microsecs;


 if (recovery_min_apply_delay <= 0)
  return 0;


 if (!reachedConsistency)
  return 0;


 if (!ArchiveRecoveryRequested)
  return 0;
 if (XLogRecGetRmid(record) != RM_XACT_ID)
  return 0;

 xact_info = XLogRecGetInfo(record) & XLOG_XACT_OPMASK;

 if (xact_info != XLOG_XACT_COMMIT &&
  xact_info != XLOG_XACT_COMMIT_PREPARED)
  return 0;

 if (!getRecordTimestamp(record, &xtime))
  return 0;

 recoveryDelayUntilTime =
  TimestampTzPlusMilliseconds(xtime, recovery_min_apply_delay);





 TimestampDifference(GetCurrentTimestamp(), recoveryDelayUntilTime,
      &secs, &microsecs);
 if (secs <= 0 && microsecs <= 0)
  return 0;

 while (1)
 {
  ResetLatch(&XLogCtl->recoveryWakeupLatch);


  HandleStartupProcInterrupts();

  if (CheckForStandbyTrigger())
   break;





  TimestampDifference(GetCurrentTimestamp(), recoveryDelayUntilTime,
       &secs, &microsecs);





  if (secs <= 0 && microsecs / 1000 <= 0)
   break;

  elog(DEBUG2, "recovery apply delay %ld seconds, %d milliseconds",
    secs, microsecs / 1000);

  (void) WaitLatch(&XLogCtl->recoveryWakeupLatch,
       WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
       secs * 1000L + microsecs / 1000,
       WAIT_EVENT_RECOVERY_APPLY_DELAY);
 }
 return 1;
}
