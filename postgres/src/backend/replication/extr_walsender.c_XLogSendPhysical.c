
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
typedef int int64 ;
typedef int activitymsg ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int sentPtr; int mutex; } ;
typedef TYPE_1__ WalSnd ;
struct TYPE_12__ {int ws_file; } ;
struct TYPE_11__ {char* data; size_t len; } ;
typedef int Size ;
typedef int List ;


 int Assert (int) ;
 int DEBUG1 ;
 int GetCurrentTimestamp () ;
 int GetFlushRecPtr () ;
 int GetStandbyFlushRecPtr () ;
 int LagTrackerWrite (int,int) ;
 int MAX_SEND_SIZE ;
 TYPE_1__* MyWalSnd ;
 int RecoveryInProgress () ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ ThisTimeLineID ;
 int WALSNDSTATE_STOPPING ;
 int WalSndCaughtUp ;
 int WalSndSetState (int ) ;
 int XLOG_BLCKSZ ;
 int XLogRead (int ,char*,int,int) ;
 int am_cascading_walsender ;
 int close (int) ;
 int elog (int ,char*,int,int,int,int) ;
 int enlargeStringInfo (TYPE_2__*,int) ;
 scalar_t__ got_STOPPING ;
 int list_free_deep (int *) ;
 int memcpy (char*,char*,int) ;
 TYPE_2__ output_message ;
 int pq_putmessage_noblock (char,char*,size_t) ;
 int pq_sendbyte (TYPE_2__*,char) ;
 int pq_sendint64 (TYPE_2__*,int) ;
 int * readTimeLineHistory (scalar_t__) ;
 int resetStringInfo (TYPE_2__*) ;
 int sendCxt ;
 TYPE_3__* sendSeg ;
 scalar_t__ sendTimeLine ;
 int sendTimeLineIsHistoric ;
 scalar_t__ sendTimeLineNextTLI ;
 int sendTimeLineValidUpto ;
 int sentPtr ;
 int set_ps_display (char*,int) ;
 int snprintf (char*,int,char*,int,int) ;
 int streamingDoneSending ;
 int tliSwitchPoint (scalar_t__,int *,scalar_t__*) ;
 TYPE_2__ tmpbuf ;
 scalar_t__ update_process_title ;

__attribute__((used)) static void
XLogSendPhysical(void)
{
 XLogRecPtr SendRqstPtr;
 XLogRecPtr startptr;
 XLogRecPtr endptr;
 Size nbytes;


 if (got_STOPPING)
  WalSndSetState(WALSNDSTATE_STOPPING);

 if (streamingDoneSending)
 {
  WalSndCaughtUp = 1;
  return;
 }


 if (sendTimeLineIsHistoric)
 {





  SendRqstPtr = sendTimeLineValidUpto;
 }
 else if (am_cascading_walsender)
 {
  bool becameHistoric = 0;

  SendRqstPtr = GetStandbyFlushRecPtr();

  if (!RecoveryInProgress())
  {




   am_cascading_walsender = 0;
   becameHistoric = 1;
  }
  else
  {





   if (sendTimeLine != ThisTimeLineID)
    becameHistoric = 1;
  }

  if (becameHistoric)
  {





   List *history;

   history = readTimeLineHistory(ThisTimeLineID);
   sendTimeLineValidUpto = tliSwitchPoint(sendTimeLine, history, &sendTimeLineNextTLI);

   Assert(sendTimeLine < sendTimeLineNextTLI);
   list_free_deep(history);

   sendTimeLineIsHistoric = 1;

   SendRqstPtr = sendTimeLineValidUpto;
  }
 }
 else
 {
  SendRqstPtr = GetFlushRecPtr();
 }
 LagTrackerWrite(SendRqstPtr, GetCurrentTimestamp());
 if (sendTimeLineIsHistoric && sendTimeLineValidUpto <= sentPtr)
 {

  if (sendSeg->ws_file >= 0)
   close(sendSeg->ws_file);
  sendSeg->ws_file = -1;


  pq_putmessage_noblock('c', ((void*)0), 0);
  streamingDoneSending = 1;

  WalSndCaughtUp = 1;

  elog(DEBUG1, "walsender reached end of timeline at %X/%X (sent up to %X/%X)",
    (uint32) (sendTimeLineValidUpto >> 32), (uint32) sendTimeLineValidUpto,
    (uint32) (sentPtr >> 32), (uint32) sentPtr);
  return;
 }


 Assert(sentPtr <= SendRqstPtr);
 if (SendRqstPtr <= sentPtr)
 {
  WalSndCaughtUp = 1;
  return;
 }
 startptr = sentPtr;
 endptr = startptr;
 endptr += MAX_SEND_SIZE;


 if (SendRqstPtr <= endptr)
 {
  endptr = SendRqstPtr;
  if (sendTimeLineIsHistoric)
   WalSndCaughtUp = 0;
  else
   WalSndCaughtUp = 1;
 }
 else
 {

  endptr -= (endptr % XLOG_BLCKSZ);
  WalSndCaughtUp = 0;
 }

 nbytes = endptr - startptr;
 Assert(nbytes <= MAX_SEND_SIZE);




 resetStringInfo(&output_message);
 pq_sendbyte(&output_message, 'w');

 pq_sendint64(&output_message, startptr);
 pq_sendint64(&output_message, SendRqstPtr);
 pq_sendint64(&output_message, 0);





 enlargeStringInfo(&output_message, nbytes);
 XLogRead(sendCxt, &output_message.data[output_message.len], startptr, nbytes);
 output_message.len += nbytes;
 output_message.data[output_message.len] = '\0';




 resetStringInfo(&tmpbuf);
 pq_sendint64(&tmpbuf, GetCurrentTimestamp());
 memcpy(&output_message.data[1 + sizeof(int64) + sizeof(int64)],
     tmpbuf.data, sizeof(int64));

 pq_putmessage_noblock('d', output_message.data, output_message.len);

 sentPtr = endptr;


 {
  WalSnd *walsnd = MyWalSnd;

  SpinLockAcquire(&walsnd->mutex);
  walsnd->sentPtr = sentPtr;
  SpinLockRelease(&walsnd->mutex);
 }


 if (update_process_title)
 {
  char activitymsg[50];

  snprintf(activitymsg, sizeof(activitymsg), "streaming %X/%X",
     (uint32) (sentPtr >> 32), (uint32) sentPtr);
  set_ps_display(activitymsg, 0);
 }

 return;
}
