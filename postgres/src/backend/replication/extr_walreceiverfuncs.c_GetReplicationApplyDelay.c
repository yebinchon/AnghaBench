
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ receivedUpto; int mutex; } ;
typedef TYPE_1__ WalRcvData ;
typedef scalar_t__ TimestampTz ;


 scalar_t__ GetCurrentChunkReplayStartTime () ;
 int GetCurrentTimestamp () ;
 scalar_t__ GetXLogReplayRecPtr (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int TimestampDifference (scalar_t__,int ,long*,int*) ;
 TYPE_1__* WalRcv ;

int
GetReplicationApplyDelay(void)
{
 WalRcvData *walrcv = WalRcv;
 XLogRecPtr receivePtr;
 XLogRecPtr replayPtr;

 long secs;
 int usecs;

 TimestampTz chunkReplayStartTime;

 SpinLockAcquire(&walrcv->mutex);
 receivePtr = walrcv->receivedUpto;
 SpinLockRelease(&walrcv->mutex);

 replayPtr = GetXLogReplayRecPtr(((void*)0));

 if (receivePtr == replayPtr)
  return 0;

 chunkReplayStartTime = GetCurrentChunkReplayStartTime();

 if (chunkReplayStartTime == 0)
  return -1;

 TimestampDifference(chunkReplayStartTime,
      GetCurrentTimestamp(),
      &secs, &usecs);

 return (((int) secs * 1000) + (usecs / 1000));
}
