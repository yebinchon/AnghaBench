
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_3__ {int walRcvState; scalar_t__ pid; int mutex; } ;
typedef TYPE_1__ WalRcvData ;


 int HandleStartupProcInterrupts () ;
 int SIGTERM ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;






 TYPE_1__* WalRcv ;
 scalar_t__ WalRcvRunning () ;
 int kill (scalar_t__,int ) ;
 int pg_usleep (int) ;

void
ShutdownWalRcv(void)
{
 WalRcvData *walrcv = WalRcv;
 pid_t walrcvpid = 0;






 SpinLockAcquire(&walrcv->mutex);
 switch (walrcv->walRcvState)
 {
  case 131:
   break;
  case 132:
   walrcv->walRcvState = 131;
   break;

  case 129:
  case 128:
  case 133:
   walrcv->walRcvState = 130;

  case 130:
   walrcvpid = walrcv->pid;
   break;
 }
 SpinLockRelease(&walrcv->mutex);




 if (walrcvpid != 0)
  kill(walrcvpid, SIGTERM);





 while (WalRcvRunning())
 {




  HandleStartupProcInterrupts();

  pg_usleep(100000);
 }
}
