
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
typedef int standby_sysid ;
typedef scalar_t__ pgsocket ;
typedef int XLogRecPtr ;
struct TYPE_9__ {char* startpointTLI; } ;
struct TYPE_10__ {TYPE_1__ physical; } ;
struct TYPE_11__ {int logical; int startpoint; char* slotname; TYPE_2__ proto; } ;
typedef TYPE_3__ WalRcvStreamOptions ;
struct TYPE_12__ {scalar_t__ pid; int walRcvState; int ready_to_display; int receiveStart; char* receiveStartTLI; int sender_port; int force_reply; int * latch; int mutex; scalar_t__ sender_host; scalar_t__ conninfo; scalar_t__ latestWalEndTime; scalar_t__ lastMsgReceiptTime; scalar_t__ lastMsgSendTime; scalar_t__ slotname; } ;
typedef TYPE_4__ WalRcvData ;
typedef scalar_t__ TimestampTz ;
typedef char* TimeLineID ;
struct TYPE_14__ {int Write; int Flush; } ;
struct TYPE_13__ {int procLatch; } ;


 scalar_t__ ARCHIVE_MODE_ALWAYS ;
 int Assert (int) ;
 int BlockSig ;
 int DEBUG1 ;
 int ERROR ;
 int FATAL ;
 scalar_t__ GetCurrentTimestamp () ;
 int GetSystemIdentifier () ;
 int GetXLogReplayRecPtr (int *) ;
 int LOG ;
 TYPE_8__ LogstreamResult ;
 int MAXCONNINFO ;
 int MAXFNAMELEN ;
 TYPE_7__* MyProc ;
 scalar_t__ MyProcPid ;
 int NAMEDATALEN ;
 int NAPTIME_PER_CYCLE ;
 int NI_MAXHOST ;
 int PANIC ;
 int PGC_SIGHUP ;
 scalar_t__ PGINVALID_SOCKET ;
 int PG_SETMASK (int *) ;
 int ProcessConfigFile (int ) ;
 int ProcessWalRcvInterrupts () ;
 int RecoveryInProgress () ;
 int ResetLatch (int *) ;
 int SIGALRM ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_DFL ;
 int SIG_IGN ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 char* ThisTimeLineID ;
 scalar_t__ TimestampTzPlusMilliseconds (scalar_t__,int) ;
 char* UINT64_FORMAT ;
 int UnBlockSig ;
 int WAIT_EVENT_WAL_RECEIVER_MAIN ;






 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_SOCKET_READABLE ;
 int WL_TIMEOUT ;
 int WaitLatchOrSocket (int *,int,scalar_t__,int ,int ) ;
 TYPE_4__* WalRcv ;
 int WalRcvDie ;
 int WalRcvFetchTimeLineHistoryFiles (char*,char*) ;
 int WalRcvQuickDieHandler ;
 int WalRcvShutdownHandler ;
 int WalRcvSigHupHandler ;
 int WalRcvSigUsr1Handler ;
 int WalRcvWaitForStartPosition (int*,char**) ;
 int * WalReceiverFunctions ;
 int XLogArchiveForceDone (char*) ;
 scalar_t__ XLogArchiveMode ;
 int XLogArchiveNotify (char*) ;
 int XLogFileName (char*,int ,int ,int ) ;
 char* XLogFileNameP (int ,int ) ;
 int XLogWalRcvFlush (int) ;
 int XLogWalRcvProcessMsg (char,char*,int) ;
 int XLogWalRcvSendHSFeedback (int) ;
 int XLogWalRcvSendReply (int,int) ;
 scalar_t__ close (int) ;
 char* cluster_name ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errdetail (char*,char*,char*,...) ;
 int errmsg (char*,...) ;
 int got_SIGHUP ;
 int incoming_message ;
 int initStringInfo (int *) ;
 int load_file (char*,int) ;
 int memset (scalar_t__,int ,int) ;
 int on_shmem_exit (int ,int ) ;
 int pfree (char*) ;
 int pg_memory_barrier () ;
 int pqsignal (int ,int ) ;
 int proc_exit (int) ;
 int recvFile ;
 int recvFileTLI ;
 int recvSegNo ;
 int reply_message ;
 int sigdelset (int *,int ) ;
 int snprintf (char*,int,char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int wal_receiver_timeout ;
 int wal_segment_size ;
 int walrcv_connect (char*,int,char*,char**) ;
 int walrcv_endstreaming (int ,char**) ;
 char* walrcv_get_conninfo (int ) ;
 int walrcv_get_senderinfo (int ,char**,int*) ;
 char* walrcv_identify_system (int ,char**) ;
 int walrcv_receive (int ,char**,scalar_t__*) ;
 scalar_t__ walrcv_startstreaming (int ,TYPE_3__*) ;
 int wrconn ;

void
WalReceiverMain(void)
{
 char conninfo[MAXCONNINFO];
 char *tmp_conninfo;
 char slotname[NAMEDATALEN];
 XLogRecPtr startpoint;
 TimeLineID startpointTLI;
 TimeLineID primaryTLI;
 bool first_stream;
 WalRcvData *walrcv = WalRcv;
 TimestampTz last_recv_timestamp;
 TimestampTz now;
 bool ping_sent;
 char *err;
 char *sender_host = ((void*)0);
 int sender_port = 0;





 Assert(walrcv != ((void*)0));

 now = GetCurrentTimestamp();
 SpinLockAcquire(&walrcv->mutex);
 Assert(walrcv->pid == 0);
 switch (walrcv->walRcvState)
 {
  case 130:

   walrcv->walRcvState = 131;


  case 131:
   SpinLockRelease(&walrcv->mutex);
   proc_exit(1);
   break;

  case 132:

   break;

  case 128:
  case 129:
  case 133:
  default:

   SpinLockRelease(&walrcv->mutex);
   elog(PANIC, "walreceiver still running according to shared memory state");
 }

 walrcv->pid = MyProcPid;
 walrcv->walRcvState = 129;


 walrcv->ready_to_display = 0;
 strlcpy(conninfo, (char *) walrcv->conninfo, MAXCONNINFO);
 strlcpy(slotname, (char *) walrcv->slotname, NAMEDATALEN);
 startpoint = walrcv->receiveStart;
 startpointTLI = walrcv->receiveStartTLI;


 walrcv->lastMsgSendTime =
  walrcv->lastMsgReceiptTime = walrcv->latestWalEndTime = now;


 walrcv->latch = &MyProc->procLatch;

 SpinLockRelease(&walrcv->mutex);


 on_shmem_exit(WalRcvDie, 0);


 pqsignal(SIGHUP, WalRcvSigHupHandler);
 pqsignal(SIGINT, SIG_IGN);
 pqsignal(SIGTERM, WalRcvShutdownHandler);
 pqsignal(SIGQUIT, WalRcvQuickDieHandler);
 pqsignal(SIGALRM, SIG_IGN);
 pqsignal(SIGPIPE, SIG_IGN);
 pqsignal(SIGUSR1, WalRcvSigUsr1Handler);
 pqsignal(SIGUSR2, SIG_IGN);


 pqsignal(SIGCHLD, SIG_DFL);


 sigdelset(&BlockSig, SIGQUIT);


 load_file("libpqwalreceiver", 0);
 if (WalReceiverFunctions == ((void*)0))
  elog(ERROR, "libpqwalreceiver didn't initialize correctly");


 PG_SETMASK(&UnBlockSig);


 wrconn = walrcv_connect(conninfo, 0, cluster_name[0] ? cluster_name : "walreceiver", &err);
 if (!wrconn)
  ereport(ERROR,
    (errmsg("could not connect to the primary server: %s", err)));






 tmp_conninfo = walrcv_get_conninfo(wrconn);
 walrcv_get_senderinfo(wrconn, &sender_host, &sender_port);
 SpinLockAcquire(&walrcv->mutex);
 memset(walrcv->conninfo, 0, MAXCONNINFO);
 if (tmp_conninfo)
  strlcpy((char *) walrcv->conninfo, tmp_conninfo, MAXCONNINFO);

 memset(walrcv->sender_host, 0, NI_MAXHOST);
 if (sender_host)
  strlcpy((char *) walrcv->sender_host, sender_host, NI_MAXHOST);

 walrcv->sender_port = sender_port;
 walrcv->ready_to_display = 1;
 SpinLockRelease(&walrcv->mutex);

 if (tmp_conninfo)
  pfree(tmp_conninfo);

 if (sender_host)
  pfree(sender_host);

 first_stream = 1;
 for (;;)
 {
  char *primary_sysid;
  char standby_sysid[32];
  WalRcvStreamOptions options;





  primary_sysid = walrcv_identify_system(wrconn, &primaryTLI);

  snprintf(standby_sysid, sizeof(standby_sysid), UINT64_FORMAT,
     GetSystemIdentifier());
  if (strcmp(primary_sysid, standby_sysid) != 0)
  {
   ereport(ERROR,
     (errmsg("database system identifier differs between the primary and standby"),
      errdetail("The primary's identifier is %s, the standby's identifier is %s.",
          primary_sysid, standby_sysid)));
  }





  if (primaryTLI < startpointTLI)
   ereport(ERROR,
     (errmsg("highest timeline %u of the primary is behind recovery timeline %u",
       primaryTLI, startpointTLI)));
  WalRcvFetchTimeLineHistoryFiles(startpointTLI, primaryTLI);
  options.logical = 0;
  options.startpoint = startpoint;
  options.slotname = slotname[0] != '\0' ? slotname : ((void*)0);
  options.proto.physical.startpointTLI = startpointTLI;
  ThisTimeLineID = startpointTLI;
  if (walrcv_startstreaming(wrconn, &options))
  {
   if (first_stream)
    ereport(LOG,
      (errmsg("started streaming WAL from primary at %X/%X on timeline %u",
        (uint32) (startpoint >> 32), (uint32) startpoint,
        startpointTLI)));
   else
    ereport(LOG,
      (errmsg("restarted WAL streaming at %X/%X on timeline %u",
        (uint32) (startpoint >> 32), (uint32) startpoint,
        startpointTLI)));
   first_stream = 0;


   LogstreamResult.Write = LogstreamResult.Flush = GetXLogReplayRecPtr(((void*)0));
   initStringInfo(&reply_message);
   initStringInfo(&incoming_message);


   last_recv_timestamp = GetCurrentTimestamp();
   ping_sent = 0;


   for (;;)
   {
    char *buf;
    int len;
    bool endofwal = 0;
    pgsocket wait_fd = PGINVALID_SOCKET;
    int rc;





    if (!RecoveryInProgress())
     ereport(FATAL,
       (errmsg("cannot continue WAL streaming, recovery has already ended")));


    ProcessWalRcvInterrupts();

    if (got_SIGHUP)
    {
     got_SIGHUP = 0;
     ProcessConfigFile(PGC_SIGHUP);
     XLogWalRcvSendHSFeedback(1);
    }


    len = walrcv_receive(wrconn, &buf, &wait_fd);
    if (len != 0)
    {




     for (;;)
     {
      if (len > 0)
      {




       last_recv_timestamp = GetCurrentTimestamp();
       ping_sent = 0;
       XLogWalRcvProcessMsg(buf[0], &buf[1], len - 1);
      }
      else if (len == 0)
       break;
      else if (len < 0)
      {
       ereport(LOG,
         (errmsg("replication terminated by primary server"),
          errdetail("End of WAL reached on timeline %u at %X/%X.",
              startpointTLI,
              (uint32) (LogstreamResult.Write >> 32), (uint32) LogstreamResult.Write)));
       endofwal = 1;
       break;
      }
      len = walrcv_receive(wrconn, &buf, &wait_fd);
     }


     XLogWalRcvSendReply(0, 0);






     XLogWalRcvFlush(0);
    }


    if (endofwal)
     break;
    Assert(wait_fd != PGINVALID_SOCKET);
    rc = WaitLatchOrSocket(walrcv->latch,
            WL_EXIT_ON_PM_DEATH | WL_SOCKET_READABLE |
            WL_TIMEOUT | WL_LATCH_SET,
            wait_fd,
            NAPTIME_PER_CYCLE,
            WAIT_EVENT_WAL_RECEIVER_MAIN);
    if (rc & WL_LATCH_SET)
    {
     ResetLatch(walrcv->latch);
     ProcessWalRcvInterrupts();

     if (walrcv->force_reply)
     {






      walrcv->force_reply = 0;
      pg_memory_barrier();
      XLogWalRcvSendReply(1, 0);
     }
    }
    if (rc & WL_TIMEOUT)
    {
     bool requestReply = 0;





     if (wal_receiver_timeout > 0)
     {
      TimestampTz now = GetCurrentTimestamp();
      TimestampTz timeout;

      timeout =
       TimestampTzPlusMilliseconds(last_recv_timestamp,
              wal_receiver_timeout);

      if (now >= timeout)
       ereport(ERROR,
         (errmsg("terminating walreceiver due to timeout")));





      if (!ping_sent)
      {
       timeout = TimestampTzPlusMilliseconds(last_recv_timestamp,
                  (wal_receiver_timeout / 2));
       if (now >= timeout)
       {
        requestReply = 1;
        ping_sent = 1;
       }
      }
     }

     XLogWalRcvSendReply(requestReply, requestReply);
     XLogWalRcvSendHSFeedback(0);
    }
   }





   walrcv_endstreaming(wrconn, &primaryTLI);






   WalRcvFetchTimeLineHistoryFiles(startpointTLI, primaryTLI);
  }
  else
   ereport(LOG,
     (errmsg("primary server contains no more WAL on requested timeline %u",
       startpointTLI)));





  if (recvFile >= 0)
  {
   char xlogfname[MAXFNAMELEN];

   XLogWalRcvFlush(0);
   if (close(recvFile) != 0)
    ereport(PANIC,
      (errcode_for_file_access(),
       errmsg("could not close log segment %s: %m",
        XLogFileNameP(recvFileTLI, recvSegNo))));





   XLogFileName(xlogfname, recvFileTLI, recvSegNo, wal_segment_size);
   if (XLogArchiveMode != ARCHIVE_MODE_ALWAYS)
    XLogArchiveForceDone(xlogfname);
   else
    XLogArchiveNotify(xlogfname);
  }
  recvFile = -1;

  elog(DEBUG1, "walreceiver ended streaming and awaits new instructions");
  WalRcvWaitForStartPosition(&startpoint, &startpointTLI);
 }

}
