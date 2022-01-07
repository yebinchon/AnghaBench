
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pg_time_t ;
typedef scalar_t__ WalRcvState ;
struct TYPE_3__ {scalar_t__ walRcvState; scalar_t__ startTime; int mutex; } ;
typedef TYPE_1__ WalRcvData ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ WALRCV_RESTARTING ;
 scalar_t__ WALRCV_STARTING ;
 scalar_t__ WALRCV_STARTUP_TIMEOUT ;
 scalar_t__ WALRCV_STOPPED ;
 scalar_t__ WALRCV_STREAMING ;
 TYPE_1__* WalRcv ;
 int time (int *) ;

bool
WalRcvStreaming(void)
{
 WalRcvData *walrcv = WalRcv;
 WalRcvState state;
 pg_time_t startTime;

 SpinLockAcquire(&walrcv->mutex);

 state = walrcv->walRcvState;
 startTime = walrcv->startTime;

 SpinLockRelease(&walrcv->mutex);







 if (state == WALRCV_STARTING)
 {
  pg_time_t now = (pg_time_t) time(((void*)0));

  if ((now - startTime) > WALRCV_STARTUP_TIMEOUT)
  {
   SpinLockAcquire(&walrcv->mutex);

   if (walrcv->walRcvState == WALRCV_STARTING)
    state = walrcv->walRcvState = WALRCV_STOPPED;

   SpinLockRelease(&walrcv->mutex);
  }
 }

 if (state == WALRCV_STREAMING || state == WALRCV_STARTING ||
  state == WALRCV_RESTARTING)
  return 1;
 else
  return 0;
}
