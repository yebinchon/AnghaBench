
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int startpos_str ;
typedef int nulls ;
typedef int int64 ;
typedef int XLogRecPtr ;
typedef int TupleDesc ;
typedef int TupOutputState ;
struct TYPE_5__ {int sentPtr; int mutex; } ;
struct TYPE_4__ {scalar_t__ timeline; int startpoint; scalar_t__ slotname; } ;
typedef int StringInfoData ;
typedef TYPE_1__ StartReplicationCmd ;
typedef int List ;
typedef int DestReceiver ;
typedef int Datum ;
typedef int AttrNumber ;


 int Assert (int) ;
 int CStringGetTextDatum (char*) ;
 int * CreateDestReceiver (int ) ;
 int CreateTemplateTupleDesc (int) ;
 int DestRemoteSimple ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int GetFlushRecPtr () ;
 int GetStandbyFlushRecPtr () ;
 int INT8OID ;
 int Int64GetDatum (int ) ;
 int InvalidXLogRecPtr ;
 int MemSet (int*,int,int) ;
 int MyReplicationSlot ;
 TYPE_3__* MyWalSnd ;
 int ReplicationSlotAcquire (scalar_t__,int) ;
 int ReplicationSlotRelease () ;
 scalar_t__ SlotIsLogical (int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int SyncRepInitConfig () ;
 int TEXTOID ;
 int TTSOpsVirtual ;
 scalar_t__ ThisTimeLineID ;
 int TupleDescInitBuiltinEntry (int ,int ,char*,int ,int,int ) ;
 int WALSNDSTATE_CATCHUP ;
 int WALSNDSTATE_STARTUP ;
 int WalSndLoop (int ) ;
 int WalSndSetState (int ) ;
 int XLogRecPtrIsInvalid (int) ;
 int XLogSendPhysical ;
 scalar_t__ am_cascading_walsender ;
 int * begin_tup_output_tupdesc (int *,int ,int *) ;
 int do_tup_output (int *,int *,int*) ;
 int end_tup_output (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,scalar_t__,int,int) ;
 int errmsg (char*,...) ;
 scalar_t__ got_STOPPING ;
 int list_free_deep (int *) ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_flush () ;
 int pq_puttextmessage (char,char*) ;
 int pq_sendbyte (int *,int ) ;
 int pq_sendint16 (int *,int ) ;
 int proc_exit (int ) ;
 int * readTimeLineHistory (scalar_t__) ;
 int replication_active ;
 scalar_t__ sendTimeLine ;
 int sendTimeLineIsHistoric ;
 scalar_t__ sendTimeLineNextTLI ;
 int sendTimeLineValidUpto ;
 int sentPtr ;
 int snprintf (char*,int,char*,int,int) ;
 int streamingDoneReceiving ;
 int streamingDoneSending ;
 int tliSwitchPoint (scalar_t__,int *,scalar_t__*) ;

__attribute__((used)) static void
StartReplication(StartReplicationCmd *cmd)
{
 StringInfoData buf;
 XLogRecPtr FlushPtr;

 if (ThisTimeLineID == 0)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("IDENTIFY_SYSTEM has not been run before START_REPLICATION")));
 if (cmd->slotname)
 {
  ReplicationSlotAcquire(cmd->slotname, 1);
  if (SlotIsLogical(MyReplicationSlot))
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      (errmsg("cannot use a logical replication slot for physical replication"))));
 }






 if (am_cascading_walsender)
 {

  FlushPtr = GetStandbyFlushRecPtr();
 }
 else
  FlushPtr = GetFlushRecPtr();

 if (cmd->timeline != 0)
 {
  XLogRecPtr switchpoint;

  sendTimeLine = cmd->timeline;
  if (sendTimeLine == ThisTimeLineID)
  {
   sendTimeLineIsHistoric = 0;
   sendTimeLineValidUpto = InvalidXLogRecPtr;
  }
  else
  {
   List *timeLineHistory;

   sendTimeLineIsHistoric = 1;





   timeLineHistory = readTimeLineHistory(ThisTimeLineID);
   switchpoint = tliSwitchPoint(cmd->timeline, timeLineHistory,
           &sendTimeLineNextTLI);
   list_free_deep(timeLineHistory);
   if (!XLogRecPtrIsInvalid(switchpoint) &&
    switchpoint < cmd->startpoint)
   {
    ereport(ERROR,
      (errmsg("requested starting point %X/%X on timeline %u is not in this server's history",
        (uint32) (cmd->startpoint >> 32),
        (uint32) (cmd->startpoint),
        cmd->timeline),
       errdetail("This server's history forked from timeline %u at %X/%X.",
           cmd->timeline,
           (uint32) (switchpoint >> 32),
           (uint32) (switchpoint))));
   }
   sendTimeLineValidUpto = switchpoint;
  }
 }
 else
 {
  sendTimeLine = ThisTimeLineID;
  sendTimeLineValidUpto = InvalidXLogRecPtr;
  sendTimeLineIsHistoric = 0;
 }

 streamingDoneSending = streamingDoneReceiving = 0;


 if (!sendTimeLineIsHistoric || cmd->startpoint < sendTimeLineValidUpto)
 {
  WalSndSetState(WALSNDSTATE_CATCHUP);


  pq_beginmessage(&buf, 'W');
  pq_sendbyte(&buf, 0);
  pq_sendint16(&buf, 0);
  pq_endmessage(&buf);
  pq_flush();





  if (FlushPtr < cmd->startpoint)
  {
   ereport(ERROR,
     (errmsg("requested starting point %X/%X is ahead of the WAL flush position of this server %X/%X",
       (uint32) (cmd->startpoint >> 32),
       (uint32) (cmd->startpoint),
       (uint32) (FlushPtr >> 32),
       (uint32) (FlushPtr))));
  }


  sentPtr = cmd->startpoint;


  SpinLockAcquire(&MyWalSnd->mutex);
  MyWalSnd->sentPtr = sentPtr;
  SpinLockRelease(&MyWalSnd->mutex);

  SyncRepInitConfig();


  replication_active = 1;

  WalSndLoop(XLogSendPhysical);

  replication_active = 0;
  if (got_STOPPING)
   proc_exit(0);
  WalSndSetState(WALSNDSTATE_STARTUP);

  Assert(streamingDoneSending && streamingDoneReceiving);
 }

 if (cmd->slotname)
  ReplicationSlotRelease();





 if (sendTimeLineIsHistoric)
 {
  char startpos_str[8 + 1 + 8 + 1];
  DestReceiver *dest;
  TupOutputState *tstate;
  TupleDesc tupdesc;
  Datum values[2];
  bool nulls[2];

  snprintf(startpos_str, sizeof(startpos_str), "%X/%X",
     (uint32) (sendTimeLineValidUpto >> 32),
     (uint32) sendTimeLineValidUpto);

  dest = CreateDestReceiver(DestRemoteSimple);
  MemSet(nulls, 0, sizeof(nulls));






  tupdesc = CreateTemplateTupleDesc(2);
  TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 1, "next_tli",
          INT8OID, -1, 0);
  TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 2, "next_tli_startpos",
          TEXTOID, -1, 0);


  tstate = begin_tup_output_tupdesc(dest, tupdesc, &TTSOpsVirtual);

  values[0] = Int64GetDatum((int64) sendTimeLineNextTLI);
  values[1] = CStringGetTextDatum(startpos_str);


  do_tup_output(tstate, values, nulls);

  end_tup_output(tstate);
 }


 pq_puttextmessage('C', "START_STREAMING");
}
