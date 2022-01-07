
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pid; int writeLag; int flushLag; int applyLag; int mutex; scalar_t__ replyTime; int * latch; int state; void* apply; void* flush; void* write; void* sentPtr; } ;
typedef TYPE_1__ WalSnd ;
struct TYPE_7__ {int procLatch; } ;
struct TYPE_6__ {TYPE_1__* walsnds; } ;


 int Assert (int ) ;
 void* InvalidXLogRecPtr ;
 TYPE_4__* MyProc ;
 scalar_t__ MyProcPid ;
 TYPE_1__* MyWalSnd ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WALSNDSTATE_STARTUP ;
 TYPE_2__* WalSndCtl ;
 int WalSndKill ;
 int max_wal_senders ;
 int on_shmem_exit (int ,int ) ;

__attribute__((used)) static void
InitWalSenderSlot(void)
{
 int i;





 Assert(WalSndCtl != ((void*)0));
 Assert(MyWalSnd == ((void*)0));





 for (i = 0; i < max_wal_senders; i++)
 {
  WalSnd *walsnd = &WalSndCtl->walsnds[i];

  SpinLockAcquire(&walsnd->mutex);

  if (walsnd->pid != 0)
  {
   SpinLockRelease(&walsnd->mutex);
   continue;
  }
  else
  {



   walsnd->pid = MyProcPid;
   walsnd->sentPtr = InvalidXLogRecPtr;
   walsnd->write = InvalidXLogRecPtr;
   walsnd->flush = InvalidXLogRecPtr;
   walsnd->apply = InvalidXLogRecPtr;
   walsnd->writeLag = -1;
   walsnd->flushLag = -1;
   walsnd->applyLag = -1;
   walsnd->state = WALSNDSTATE_STARTUP;
   walsnd->latch = &MyProc->procLatch;
   walsnd->replyTime = 0;
   SpinLockRelease(&walsnd->mutex);

   MyWalSnd = (WalSnd *) walsnd;

   break;
  }
 }

 Assert(MyWalSnd != ((void*)0));


 on_shmem_exit(WalSndKill, 0);
}
