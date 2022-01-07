
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ latestWalEnd; int mutex; void* lastMsgReceiptTime; void* lastMsgSendTime; void* latestWalEndTime; } ;
typedef TYPE_1__ WalRcvData ;
typedef void* TimestampTz ;


 scalar_t__ DEBUG2 ;
 void* GetCurrentTimestamp () ;
 int GetReplicationApplyDelay () ;
 int GetReplicationTransferLatency () ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* WalRcv ;
 int elog (scalar_t__,char*,char*,char*,int,...) ;
 scalar_t__ log_min_messages ;
 int pfree (char*) ;
 char* pstrdup (int ) ;
 int timestamptz_to_str (void*) ;

__attribute__((used)) static void
ProcessWalSndrMessage(XLogRecPtr walEnd, TimestampTz sendTime)
{
 WalRcvData *walrcv = WalRcv;

 TimestampTz lastMsgReceiptTime = GetCurrentTimestamp();


 SpinLockAcquire(&walrcv->mutex);
 if (walrcv->latestWalEnd < walEnd)
  walrcv->latestWalEndTime = sendTime;
 walrcv->latestWalEnd = walEnd;
 walrcv->lastMsgSendTime = sendTime;
 walrcv->lastMsgReceiptTime = lastMsgReceiptTime;
 SpinLockRelease(&walrcv->mutex);

 if (log_min_messages <= DEBUG2)
 {
  char *sendtime;
  char *receipttime;
  int applyDelay;


  sendtime = pstrdup(timestamptz_to_str(sendTime));
  receipttime = pstrdup(timestamptz_to_str(lastMsgReceiptTime));
  applyDelay = GetReplicationApplyDelay();


  if (applyDelay == -1)
   elog(DEBUG2, "sendtime %s receipttime %s replication apply delay (N/A) transfer latency %d ms",
     sendtime,
     receipttime,
     GetReplicationTransferLatency());
  else
   elog(DEBUG2, "sendtime %s receipttime %s replication apply delay %d ms transfer latency %d ms",
     sendtime,
     receipttime,
     applyDelay,
     GetReplicationTransferLatency());

  pfree(sendtime);
  pfree(receipttime);
 }
}
