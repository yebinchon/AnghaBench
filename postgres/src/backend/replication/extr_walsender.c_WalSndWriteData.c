
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64 ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef scalar_t__ TimestampTz ;
struct TYPE_11__ {int sock; } ;
struct TYPE_10__ {int data; } ;
struct TYPE_9__ {TYPE_1__* out; } ;
struct TYPE_8__ {int len; int * data; } ;
typedef TYPE_2__ LogicalDecodingContext ;


 int CHECK_FOR_INTERRUPTS () ;
 int ConfigReloadPending ;
 scalar_t__ GetCurrentTimestamp () ;
 int MyLatch ;
 TYPE_7__* MyProcPort ;
 int PGC_SIGHUP ;
 int ProcessConfigFile (int ) ;
 int ProcessRepliesIfAny () ;
 int ResetLatch (int ) ;
 int SetLatch (int ) ;
 int SyncRepInitConfig () ;
 scalar_t__ TimestampTzPlusMilliseconds (int ,int) ;
 int WAIT_EVENT_WAL_SENDER_WRITE_DATA ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_SOCKET_READABLE ;
 int WL_SOCKET_WRITEABLE ;
 int WL_TIMEOUT ;
 int WaitLatchOrSocket (int ,int,int ,long,int ) ;
 int WalSndCheckTimeOut () ;
 long WalSndComputeSleeptime (scalar_t__) ;
 int WalSndKeepaliveIfNecessary () ;
 int WalSndShutdown () ;
 int last_reply_timestamp ;
 int memcpy (int *,int ,int) ;
 scalar_t__ pq_flush_if_writable () ;
 int pq_is_send_pending () ;
 int pq_putmessage_noblock (char,int *,int ) ;
 int pq_sendint64 (TYPE_3__*,scalar_t__) ;
 int resetStringInfo (TYPE_3__*) ;
 TYPE_3__ tmpbuf ;
 int wal_sender_timeout ;

__attribute__((used)) static void
WalSndWriteData(LogicalDecodingContext *ctx, XLogRecPtr lsn, TransactionId xid,
    bool last_write)
{
 TimestampTz now;






 resetStringInfo(&tmpbuf);
 now = GetCurrentTimestamp();
 pq_sendint64(&tmpbuf, now);
 memcpy(&ctx->out->data[1 + sizeof(int64) + sizeof(int64)],
     tmpbuf.data, sizeof(int64));


 pq_putmessage_noblock('d', ctx->out->data, ctx->out->len);

 CHECK_FOR_INTERRUPTS();


 if (pq_flush_if_writable() != 0)
  WalSndShutdown();


 if (now < TimestampTzPlusMilliseconds(last_reply_timestamp,
            wal_sender_timeout / 2) &&
  !pq_is_send_pending())
 {
  return;
 }


 for (;;)
 {
  int wakeEvents;
  long sleeptime;


  ProcessRepliesIfAny();


  WalSndCheckTimeOut();


  WalSndKeepaliveIfNecessary();

  if (!pq_is_send_pending())
   break;

  sleeptime = WalSndComputeSleeptime(GetCurrentTimestamp());

  wakeEvents = WL_LATCH_SET | WL_EXIT_ON_PM_DEATH |
   WL_SOCKET_WRITEABLE | WL_SOCKET_READABLE | WL_TIMEOUT;


  (void) WaitLatchOrSocket(MyLatch, wakeEvents,
         MyProcPort->sock, sleeptime,
         WAIT_EVENT_WAL_SENDER_WRITE_DATA);


  ResetLatch(MyLatch);

  CHECK_FOR_INTERRUPTS();


  if (ConfigReloadPending)
  {
   ConfigReloadPending = 0;
   ProcessConfigFile(PGC_SIGHUP);
   SyncRepInitConfig();
  }


  if (pq_flush_if_writable() != 0)
   WalSndShutdown();
 }


 SetLatch(MyLatch);
}
