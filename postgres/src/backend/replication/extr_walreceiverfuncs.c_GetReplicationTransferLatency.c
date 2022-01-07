
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int lastMsgReceiptTime; int lastMsgSendTime; } ;
typedef TYPE_1__ WalRcvData ;
typedef int TimestampTz ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int TimestampDifference (int ,int ,long*,int*) ;
 TYPE_1__* WalRcv ;

int
GetReplicationTransferLatency(void)
{
 WalRcvData *walrcv = WalRcv;

 TimestampTz lastMsgSendTime;
 TimestampTz lastMsgReceiptTime;

 long secs = 0;
 int usecs = 0;
 int ms;

 SpinLockAcquire(&walrcv->mutex);
 lastMsgSendTime = walrcv->lastMsgSendTime;
 lastMsgReceiptTime = walrcv->lastMsgReceiptTime;
 SpinLockRelease(&walrcv->mutex);

 TimestampDifference(lastMsgSendTime,
      lastMsgReceiptTime,
      &secs, &usecs);

 ms = ((int) secs * 1000) + (usecs / 1000);

 return ms;
}
