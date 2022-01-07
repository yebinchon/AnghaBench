
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int activitymsg ;
typedef int XLogRecPtr ;
struct TYPE_3__ {int walRcvState; int receiveStart; int latch; int mutex; scalar_t__ receiveStartTLI; } ;
typedef TYPE_1__ WalRcvData ;
typedef scalar_t__ TimeLineID ;


 int Assert (int) ;
 int FATAL ;
 int InvalidXLogRecPtr ;
 int ProcessWalRcvInterrupts () ;
 int ResetLatch (int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WAIT_EVENT_WAL_RECEIVER_WAIT_START ;
 int WALRCV_RESTARTING ;
 int WALRCV_STOPPING ;
 int WALRCV_STREAMING ;
 int WALRCV_WAITING ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WaitLatch (int ,int,int ,int ) ;
 int WakeupRecovery () ;
 TYPE_1__* WalRcv ;
 int elog (int ,char*) ;
 int exit (int) ;
 int proc_exit (int ) ;
 int set_ps_display (char*,int) ;
 int snprintf (char*,int,char*,int,int) ;
 scalar_t__ update_process_title ;

__attribute__((used)) static void
WalRcvWaitForStartPosition(XLogRecPtr *startpoint, TimeLineID *startpointTLI)
{
 WalRcvData *walrcv = WalRcv;
 int state;

 SpinLockAcquire(&walrcv->mutex);
 state = walrcv->walRcvState;
 if (state != WALRCV_STREAMING)
 {
  SpinLockRelease(&walrcv->mutex);
  if (state == WALRCV_STOPPING)
   proc_exit(0);
  else
   elog(FATAL, "unexpected walreceiver state");
 }
 walrcv->walRcvState = WALRCV_WAITING;
 walrcv->receiveStart = InvalidXLogRecPtr;
 walrcv->receiveStartTLI = 0;
 SpinLockRelease(&walrcv->mutex);

 if (update_process_title)
  set_ps_display("idle", 0);





 WakeupRecovery();
 for (;;)
 {
  ResetLatch(walrcv->latch);

  ProcessWalRcvInterrupts();

  SpinLockAcquire(&walrcv->mutex);
  Assert(walrcv->walRcvState == WALRCV_RESTARTING ||
      walrcv->walRcvState == WALRCV_WAITING ||
      walrcv->walRcvState == WALRCV_STOPPING);
  if (walrcv->walRcvState == WALRCV_RESTARTING)
  {

   *startpoint = walrcv->receiveStart;
   *startpointTLI = walrcv->receiveStartTLI;
   walrcv->walRcvState = WALRCV_STREAMING;
   SpinLockRelease(&walrcv->mutex);
   break;
  }
  if (walrcv->walRcvState == WALRCV_STOPPING)
  {




   SpinLockRelease(&walrcv->mutex);
   exit(1);
  }
  SpinLockRelease(&walrcv->mutex);

  (void) WaitLatch(walrcv->latch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
       WAIT_EVENT_WAL_RECEIVER_WAIT_START);
 }

 if (update_process_title)
 {
  char activitymsg[50];

  snprintf(activitymsg, sizeof(activitymsg), "restarting at %X/%X",
     (uint32) (*startpoint >> 32),
     (uint32) *startpoint);
  set_ps_display(activitymsg, 0);
 }
}
