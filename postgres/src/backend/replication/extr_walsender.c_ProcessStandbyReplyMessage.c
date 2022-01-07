
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int XLogRecPtr ;
struct TYPE_3__ {int write; int flush; int apply; int writeLag; int flushLag; int applyLag; int mutex; void* replyTime; } ;
typedef TYPE_1__ WalSnd ;
typedef void* TimestampTz ;
typedef int TimeOffset ;


 scalar_t__ DEBUG2 ;
 void* GetCurrentTimestamp () ;
 int InvalidXLogRecPtr ;
 int LagTrackerRead (int ,int,void*) ;
 int LogicalConfirmReceivedLocation (int) ;
 scalar_t__ MyReplicationSlot ;
 TYPE_1__* MyWalSnd ;
 int PhysicalConfirmReceivedLocation (int) ;
 int SYNC_REP_WAIT_APPLY ;
 int SYNC_REP_WAIT_FLUSH ;
 int SYNC_REP_WAIT_WRITE ;
 scalar_t__ SlotIsLogical (scalar_t__) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int SyncRepReleaseWaiters () ;
 int WalSndKeepalive (int) ;
 int am_cascading_walsender ;
 int elog (scalar_t__,char*,int ,int ,int ,int ,int ,int ,char*,char*) ;
 scalar_t__ log_min_messages ;
 int pfree (char*) ;
 int pq_getmsgbyte (int *) ;
 void* pq_getmsgint64 (int *) ;
 char* pstrdup (int ) ;
 int reply_message ;
 int sentPtr ;
 int timestamptz_to_str (void*) ;

__attribute__((used)) static void
ProcessStandbyReplyMessage(void)
{
 XLogRecPtr writePtr,
    flushPtr,
    applyPtr;
 bool replyRequested;
 TimeOffset writeLag,
    flushLag,
    applyLag;
 bool clearLagTimes;
 TimestampTz now;
 TimestampTz replyTime;

 static bool fullyAppliedLastTime = 0;


 writePtr = pq_getmsgint64(&reply_message);
 flushPtr = pq_getmsgint64(&reply_message);
 applyPtr = pq_getmsgint64(&reply_message);
 replyTime = pq_getmsgint64(&reply_message);
 replyRequested = pq_getmsgbyte(&reply_message);

 if (log_min_messages <= DEBUG2)
 {
  char *replyTimeStr;


  replyTimeStr = pstrdup(timestamptz_to_str(replyTime));

  elog(DEBUG2, "write %X/%X flush %X/%X apply %X/%X%s reply_time %s",
    (uint32) (writePtr >> 32), (uint32) writePtr,
    (uint32) (flushPtr >> 32), (uint32) flushPtr,
    (uint32) (applyPtr >> 32), (uint32) applyPtr,
    replyRequested ? " (reply requested)" : "",
    replyTimeStr);

  pfree(replyTimeStr);
 }


 now = GetCurrentTimestamp();
 writeLag = LagTrackerRead(SYNC_REP_WAIT_WRITE, writePtr, now);
 flushLag = LagTrackerRead(SYNC_REP_WAIT_FLUSH, flushPtr, now);
 applyLag = LagTrackerRead(SYNC_REP_WAIT_APPLY, applyPtr, now);
 clearLagTimes = 0;
 if (applyPtr == sentPtr)
 {
  if (fullyAppliedLastTime)
   clearLagTimes = 1;
  fullyAppliedLastTime = 1;
 }
 else
  fullyAppliedLastTime = 0;


 if (replyRequested)
  WalSndKeepalive(0);





 {
  WalSnd *walsnd = MyWalSnd;

  SpinLockAcquire(&walsnd->mutex);
  walsnd->write = writePtr;
  walsnd->flush = flushPtr;
  walsnd->apply = applyPtr;
  if (writeLag != -1 || clearLagTimes)
   walsnd->writeLag = writeLag;
  if (flushLag != -1 || clearLagTimes)
   walsnd->flushLag = flushLag;
  if (applyLag != -1 || clearLagTimes)
   walsnd->applyLag = applyLag;
  walsnd->replyTime = replyTime;
  SpinLockRelease(&walsnd->mutex);
 }

 if (!am_cascading_walsender)
  SyncRepReleaseWaiters();




 if (MyReplicationSlot && flushPtr != InvalidXLogRecPtr)
 {
  if (SlotIsLogical(MyReplicationSlot))
   LogicalConfirmReceivedLocation(flushPtr);
  else
   PhysicalConfirmReceivedLocation(flushPtr);
 }
}
