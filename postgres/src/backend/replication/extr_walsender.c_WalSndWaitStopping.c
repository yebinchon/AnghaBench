
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pid; scalar_t__ state; int mutex; } ;
typedef TYPE_1__ WalSnd ;
struct TYPE_4__ {TYPE_1__* walsnds; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ WALSNDSTATE_STOPPING ;
 TYPE_2__* WalSndCtl ;
 int max_wal_senders ;
 int pg_usleep (long) ;

void
WalSndWaitStopping(void)
{
 for (;;)
 {
  int i;
  bool all_stopped = 1;

  for (i = 0; i < max_wal_senders; i++)
  {
   WalSnd *walsnd = &WalSndCtl->walsnds[i];

   SpinLockAcquire(&walsnd->mutex);

   if (walsnd->pid == 0)
   {
    SpinLockRelease(&walsnd->mutex);
    continue;
   }

   if (walsnd->state != WALSNDSTATE_STOPPING)
   {
    all_stopped = 0;
    SpinLockRelease(&walsnd->mutex);
    break;
   }
   SpinLockRelease(&walsnd->mutex);
  }


  if (all_stopped)
   return;

  pg_usleep(10000L);
 }
}
