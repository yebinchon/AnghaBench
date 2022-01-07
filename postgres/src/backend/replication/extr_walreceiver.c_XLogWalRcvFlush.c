
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int activitymsg ;
struct TYPE_4__ {scalar_t__ receivedUpto; scalar_t__ latestChunkStart; int mutex; int receivedTLI; } ;
typedef TYPE_1__ WalRcvData ;
struct TYPE_5__ {scalar_t__ Flush; scalar_t__ Write; } ;


 scalar_t__ AllowCascadeReplication () ;
 TYPE_3__ LogstreamResult ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int ThisTimeLineID ;
 int WakeupRecovery () ;
 TYPE_1__* WalRcv ;
 int WalSndWakeup () ;
 int XLogWalRcvSendHSFeedback (int) ;
 int XLogWalRcvSendReply (int,int) ;
 int issue_xlog_fsync (int ,int ) ;
 int recvFile ;
 int recvSegNo ;
 int set_ps_display (char*,int) ;
 int snprintf (char*,int,char*,int,int) ;
 scalar_t__ update_process_title ;

__attribute__((used)) static void
XLogWalRcvFlush(bool dying)
{
 if (LogstreamResult.Flush < LogstreamResult.Write)
 {
  WalRcvData *walrcv = WalRcv;

  issue_xlog_fsync(recvFile, recvSegNo);

  LogstreamResult.Flush = LogstreamResult.Write;


  SpinLockAcquire(&walrcv->mutex);
  if (walrcv->receivedUpto < LogstreamResult.Flush)
  {
   walrcv->latestChunkStart = walrcv->receivedUpto;
   walrcv->receivedUpto = LogstreamResult.Flush;
   walrcv->receivedTLI = ThisTimeLineID;
  }
  SpinLockRelease(&walrcv->mutex);


  WakeupRecovery();
  if (AllowCascadeReplication())
   WalSndWakeup();


  if (update_process_title)
  {
   char activitymsg[50];

   snprintf(activitymsg, sizeof(activitymsg), "streaming %X/%X",
      (uint32) (LogstreamResult.Write >> 32),
      (uint32) LogstreamResult.Write);
   set_ps_display(activitymsg, 0);
  }


  if (!dying)
  {
   XLogWalRcvSendReply(0, 0);
   XLogWalRcvSendHSFeedback(0);
  }
 }
}
