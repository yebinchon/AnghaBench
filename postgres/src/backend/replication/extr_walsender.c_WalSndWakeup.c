
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int * latch; } ;
typedef TYPE_1__ WalSnd ;
struct TYPE_4__ {TYPE_1__* walsnds; } ;
typedef int Latch ;


 int SetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_2__* WalSndCtl ;
 int max_wal_senders ;

void
WalSndWakeup(void)
{
 int i;

 for (i = 0; i < max_wal_senders; i++)
 {
  Latch *latch;
  WalSnd *walsnd = &WalSndCtl->walsnds[i];





  SpinLockAcquire(&walsnd->mutex);
  latch = walsnd->latch;
  SpinLockRelease(&walsnd->mutex);

  if (latch != ((void*)0))
   SetLatch(latch);
 }
}
