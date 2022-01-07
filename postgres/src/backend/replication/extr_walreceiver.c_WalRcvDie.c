
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ walRcvState; scalar_t__ pid; int ready_to_display; int mutex; int * latch; } ;
typedef TYPE_1__ WalRcvData ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ MyProcPid ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ WALRCV_RESTARTING ;
 scalar_t__ WALRCV_STARTING ;
 scalar_t__ WALRCV_STOPPED ;
 scalar_t__ WALRCV_STOPPING ;
 scalar_t__ WALRCV_STREAMING ;
 scalar_t__ WALRCV_WAITING ;
 int WakeupRecovery () ;
 TYPE_1__* WalRcv ;
 int XLogWalRcvFlush (int) ;
 int walrcv_disconnect (int *) ;
 int * wrconn ;

__attribute__((used)) static void
WalRcvDie(int code, Datum arg)
{
 WalRcvData *walrcv = WalRcv;


 XLogWalRcvFlush(1);


 SpinLockAcquire(&walrcv->mutex);
 Assert(walrcv->walRcvState == WALRCV_STREAMING ||
     walrcv->walRcvState == WALRCV_RESTARTING ||
     walrcv->walRcvState == WALRCV_STARTING ||
     walrcv->walRcvState == WALRCV_WAITING ||
     walrcv->walRcvState == WALRCV_STOPPING);
 Assert(walrcv->pid == MyProcPid);
 walrcv->walRcvState = WALRCV_STOPPED;
 walrcv->pid = 0;
 walrcv->ready_to_display = 0;
 walrcv->latch = ((void*)0);
 SpinLockRelease(&walrcv->mutex);


 if (wrconn != ((void*)0))
  walrcv_disconnect(wrconn);


 WakeupRecovery();
}
