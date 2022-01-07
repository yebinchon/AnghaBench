
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_3__ {scalar_t__ pid; int mutex; } ;
typedef TYPE_1__ WalSnd ;
struct TYPE_4__ {TYPE_1__* walsnds; } ;


 int InvalidBackendId ;
 int PROCSIG_WALSND_INIT_STOPPING ;
 int SendProcSignal (scalar_t__,int ,int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_2__* WalSndCtl ;
 int max_wal_senders ;

void
WalSndInitStopping(void)
{
 int i;

 for (i = 0; i < max_wal_senders; i++)
 {
  WalSnd *walsnd = &WalSndCtl->walsnds[i];
  pid_t pid;

  SpinLockAcquire(&walsnd->mutex);
  pid = walsnd->pid;
  SpinLockRelease(&walsnd->mutex);

  if (pid == 0)
   continue;

  SendProcSignal(pid, PROCSIG_WALSND_INIT_STOPPING, InvalidBackendId);
 }
}
