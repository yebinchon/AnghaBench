
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_3__ {int mutex; int receivedTLI; int latestChunkStart; int receivedUpto; } ;
typedef TYPE_1__ WalRcvData ;
typedef int TimeLineID ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* WalRcv ;

XLogRecPtr
GetWalRcvWriteRecPtr(XLogRecPtr *latestChunkStart, TimeLineID *receiveTLI)
{
 WalRcvData *walrcv = WalRcv;
 XLogRecPtr recptr;

 SpinLockAcquire(&walrcv->mutex);
 recptr = walrcv->receivedUpto;
 if (latestChunkStart)
  *latestChunkStart = walrcv->latestChunkStart;
 if (receiveTLI)
  *receiveTLI = walrcv->receivedTLI;
 SpinLockRelease(&walrcv->mutex);

 return recptr;
}
