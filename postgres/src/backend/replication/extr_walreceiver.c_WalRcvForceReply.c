
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int force_reply; int mutex; int * latch; } ;
typedef int Latch ;


 int SetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* WalRcv ;

void
WalRcvForceReply(void)
{
 Latch *latch;

 WalRcv->force_reply = 1;

 SpinLockAcquire(&WalRcv->mutex);
 latch = WalRcv->latch;
 SpinLockRelease(&WalRcv->mutex);
 if (latch)
  SetLatch(latch);
}
