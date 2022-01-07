
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * latch; int mutex; int walRcvState; } ;
typedef TYPE_1__ WalRcvData ;


 int MemSet (TYPE_1__*,int ,int ) ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;
 int SpinLockInit (int *) ;
 int WALRCV_STOPPED ;
 TYPE_1__* WalRcv ;
 int WalRcvShmemSize () ;

void
WalRcvShmemInit(void)
{
 bool found;

 WalRcv = (WalRcvData *)
  ShmemInitStruct("Wal Receiver Ctl", WalRcvShmemSize(), &found);

 if (!found)
 {

  MemSet(WalRcv, 0, WalRcvShmemSize());
  WalRcv->walRcvState = WALRCV_STOPPED;
  SpinLockInit(&WalRcv->mutex);
  WalRcv->latch = ((void*)0);
 }
}
