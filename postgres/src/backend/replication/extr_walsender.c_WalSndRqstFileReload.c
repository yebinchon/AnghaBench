
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pid; int needreload; int mutex; } ;
typedef TYPE_1__ WalSnd ;
struct TYPE_4__ {TYPE_1__* walsnds; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_2__* WalSndCtl ;
 int max_wal_senders ;

void
WalSndRqstFileReload(void)
{
 int i;

 for (i = 0; i < max_wal_senders; i++)
 {
  WalSnd *walsnd = &WalSndCtl->walsnds[i];

  SpinLockAcquire(&walsnd->mutex);
  if (walsnd->pid == 0)
  {
   SpinLockRelease(&walsnd->mutex);
   continue;
  }
  walsnd->needreload = 1;
  SpinLockRelease(&walsnd->mutex);
 }
}
