
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* WalSndSendDataCallback ) () ;
struct TYPE_4__ {int sock; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 int CHECK_FOR_INTERRUPTS () ;
 int ConfigReloadPending ;
 int DEBUG1 ;
 int GetCurrentTimestamp () ;
 int MyLatch ;
 TYPE_2__* MyProcPort ;
 TYPE_1__* MyWalSnd ;
 int PGC_SIGHUP ;
 int ProcessConfigFile (int ) ;
 int ProcessRepliesIfAny () ;
 int ResetLatch (int ) ;
 int SyncRepInitConfig () ;
 int WAIT_EVENT_WAL_SENDER_MAIN ;
 scalar_t__ WALSNDSTATE_CATCHUP ;
 int WALSNDSTATE_STREAMING ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_SOCKET_READABLE ;
 int WL_SOCKET_WRITEABLE ;
 int WL_TIMEOUT ;
 int WaitLatchOrSocket (int ,int,int ,long,int ) ;
 int WalSndCaughtUp ;
 int WalSndCheckTimeOut () ;
 long WalSndComputeSleeptime (int ) ;
 int WalSndDone (int (*) ()) ;
 int WalSndKeepaliveIfNecessary () ;
 int WalSndSetState (int ) ;
 int WalSndShutdown () ;
 int application_name ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ got_SIGUSR2 ;
 int last_reply_timestamp ;
 scalar_t__ pq_flush_if_writable () ;
 scalar_t__ pq_is_send_pending () ;
 scalar_t__ streamingDoneReceiving ;
 scalar_t__ streamingDoneSending ;
 int waiting_for_ping_response ;

__attribute__((used)) static void
WalSndLoop(WalSndSendDataCallback send_data)
{




 last_reply_timestamp = GetCurrentTimestamp();
 waiting_for_ping_response = 0;





 for (;;)
 {

  ResetLatch(MyLatch);

  CHECK_FOR_INTERRUPTS();


  if (ConfigReloadPending)
  {
   ConfigReloadPending = 0;
   ProcessConfigFile(PGC_SIGHUP);
   SyncRepInitConfig();
  }


  ProcessRepliesIfAny();






  if (streamingDoneReceiving && streamingDoneSending &&
   !pq_is_send_pending())
   break;







  if (!pq_is_send_pending())
   send_data();
  else
   WalSndCaughtUp = 0;


  if (pq_flush_if_writable() != 0)
   WalSndShutdown();


  if (WalSndCaughtUp && !pq_is_send_pending())
  {
   if (MyWalSnd->state == WALSNDSTATE_CATCHUP)
   {
    ereport(DEBUG1,
      (errmsg("\"%s\" has now caught up with upstream server",
        application_name)));
    WalSndSetState(WALSNDSTATE_STREAMING);
   }
   if (got_SIGUSR2)
    WalSndDone(send_data);
  }


  WalSndCheckTimeOut();


  WalSndKeepaliveIfNecessary();
  if ((WalSndCaughtUp && !streamingDoneSending) || pq_is_send_pending())
  {
   long sleeptime;
   int wakeEvents;

   wakeEvents = WL_LATCH_SET | WL_EXIT_ON_PM_DEATH | WL_TIMEOUT |
    WL_SOCKET_READABLE;





   sleeptime = WalSndComputeSleeptime(GetCurrentTimestamp());

   if (pq_is_send_pending())
    wakeEvents |= WL_SOCKET_WRITEABLE;


   (void) WaitLatchOrSocket(MyLatch, wakeEvents,
          MyProcPort->sock, sleeptime,
          WAIT_EVENT_WAL_SENDER_MAIN);
  }
 }
 return;
}
