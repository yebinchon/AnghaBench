
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xloc ;
typedef int uint32 ;
typedef int nulls ;
typedef int TupleDesc ;
typedef int TupOutputState ;
struct TYPE_10__ {int confirmed_flush; int name; } ;
struct TYPE_13__ {TYPE_1__ data; } ;
struct TYPE_12__ {scalar_t__ kind; char const* plugin; scalar_t__ temporary; int slotname; } ;
struct TYPE_11__ {int snapshot_builder; } ;
typedef int Snapshot ;
typedef TYPE_2__ LogicalDecodingContext ;
typedef int DestReceiver ;
typedef int Datum ;
typedef TYPE_3__ CreateReplicationSlotCmd ;
typedef scalar_t__ CRSSnapshotAction ;
typedef int AttrNumber ;


 int Assert (int) ;
 scalar_t__ CRS_EXPORT_SNAPSHOT ;
 scalar_t__ CRS_USE_SNAPSHOT ;
 int CStringGetTextDatum (char const*) ;
 int CheckLogicalDecodingRequirements () ;
 int * CreateDestReceiver (int ) ;
 TYPE_2__* CreateInitDecodingContext (char const*,int ,int,int ,int ,int ,int ,int ) ;
 int CreateTemplateTupleDesc (int) ;
 int DecodingContextFindStartpoint (TYPE_2__*) ;
 int DestRemoteSimple ;
 int ERROR ;
 scalar_t__ FirstSnapshotSet ;
 int FreeDecodingContext (TYPE_2__*) ;
 int InvalidXLogRecPtr ;
 scalar_t__ IsSubTransaction () ;
 scalar_t__ IsTransactionBlock () ;
 int MAXFNAMELEN ;
 int MemSet (int*,int,int) ;
 int MyProc ;
 TYPE_5__* MyReplicationSlot ;
 int NIL ;
 char* NameStr (int ) ;
 scalar_t__ REPLICATION_KIND_LOGICAL ;
 scalar_t__ REPLICATION_KIND_PHYSICAL ;
 int RS_EPHEMERAL ;
 int RS_PERSISTENT ;
 int RS_TEMPORARY ;
 int ReplicationSlotCreate (int ,int,int ) ;
 int ReplicationSlotMarkDirty () ;
 int ReplicationSlotPersist () ;
 int ReplicationSlotRelease () ;
 int ReplicationSlotReserveWal () ;
 int ReplicationSlotSave () ;
 int RestoreTransactionSnapshot (int ,int ) ;
 char* SnapBuildExportSnapshot (int ) ;
 int SnapBuildInitialSnapshot (int ) ;
 int TEXTOID ;
 int TTSOpsVirtual ;
 int ThisTimeLineID ;
 int TupleDescInitBuiltinEntry (int ,int ,char*,int ,int,int ) ;
 int WalSndPrepareWrite ;
 int WalSndUpdateProgress ;
 int WalSndWriteData ;
 scalar_t__ XACT_REPEATABLE_READ ;
 scalar_t__ XactIsoLevel ;
 int * begin_tup_output_tupdesc (int *,int ,int *) ;
 int do_tup_output (int *,int *,int*) ;
 int end_tup_output (int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ last_reply_timestamp ;
 int logical_read_xlog_page ;
 int parseCreateReplSlotOptions (TYPE_3__*,int*,scalar_t__*) ;
 int sendTimeLine ;
 int sendTimeLineIsHistoric ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static void
CreateReplicationSlot(CreateReplicationSlotCmd *cmd)
{
 const char *snapshot_name = ((void*)0);
 char xloc[MAXFNAMELEN];
 char *slot_name;
 bool reserve_wal = 0;
 CRSSnapshotAction snapshot_action = CRS_EXPORT_SNAPSHOT;
 DestReceiver *dest;
 TupOutputState *tstate;
 TupleDesc tupdesc;
 Datum values[4];
 bool nulls[4];

 Assert(!MyReplicationSlot);

 parseCreateReplSlotOptions(cmd, &reserve_wal, &snapshot_action);


 sendTimeLineIsHistoric = 0;
 sendTimeLine = ThisTimeLineID;

 if (cmd->kind == REPLICATION_KIND_PHYSICAL)
 {
  ReplicationSlotCreate(cmd->slotname, 0,
         cmd->temporary ? RS_TEMPORARY : RS_PERSISTENT);
 }
 else
 {
  CheckLogicalDecodingRequirements();
  ReplicationSlotCreate(cmd->slotname, 1,
         cmd->temporary ? RS_TEMPORARY : RS_EPHEMERAL);
 }

 if (cmd->kind == REPLICATION_KIND_LOGICAL)
 {
  LogicalDecodingContext *ctx;
  bool need_full_snapshot = 0;





  if (snapshot_action == CRS_EXPORT_SNAPSHOT)
  {
   if (IsTransactionBlock())
    ereport(ERROR,

      (errmsg("%s must not be called inside a transaction",
        "CREATE_REPLICATION_SLOT ... EXPORT_SNAPSHOT")));

   need_full_snapshot = 1;
  }
  else if (snapshot_action == CRS_USE_SNAPSHOT)
  {
   if (!IsTransactionBlock())
    ereport(ERROR,

      (errmsg("%s must be called inside a transaction",
        "CREATE_REPLICATION_SLOT ... USE_SNAPSHOT")));

   if (XactIsoLevel != XACT_REPEATABLE_READ)
    ereport(ERROR,

      (errmsg("%s must be called in REPEATABLE READ isolation mode transaction",
        "CREATE_REPLICATION_SLOT ... USE_SNAPSHOT")));

   if (FirstSnapshotSet)
    ereport(ERROR,

      (errmsg("%s must be called before any query",
        "CREATE_REPLICATION_SLOT ... USE_SNAPSHOT")));

   if (IsSubTransaction())
    ereport(ERROR,

      (errmsg("%s must not be called in a subtransaction",
        "CREATE_REPLICATION_SLOT ... USE_SNAPSHOT")));

   need_full_snapshot = 1;
  }

  ctx = CreateInitDecodingContext(cmd->plugin, NIL, need_full_snapshot,
          InvalidXLogRecPtr,
          logical_read_xlog_page,
          WalSndPrepareWrite, WalSndWriteData,
          WalSndUpdateProgress);
  last_reply_timestamp = 0;


  DecodingContextFindStartpoint(ctx);







  if (snapshot_action == CRS_EXPORT_SNAPSHOT)
  {
   snapshot_name = SnapBuildExportSnapshot(ctx->snapshot_builder);
  }
  else if (snapshot_action == CRS_USE_SNAPSHOT)
  {
   Snapshot snap;

   snap = SnapBuildInitialSnapshot(ctx->snapshot_builder);
   RestoreTransactionSnapshot(snap, MyProc);
  }


  FreeDecodingContext(ctx);

  if (!cmd->temporary)
   ReplicationSlotPersist();
 }
 else if (cmd->kind == REPLICATION_KIND_PHYSICAL && reserve_wal)
 {
  ReplicationSlotReserveWal();

  ReplicationSlotMarkDirty();


  if (!cmd->temporary)
   ReplicationSlotSave();
 }

 snprintf(xloc, sizeof(xloc), "%X/%X",
    (uint32) (MyReplicationSlot->data.confirmed_flush >> 32),
    (uint32) MyReplicationSlot->data.confirmed_flush);

 dest = CreateDestReceiver(DestRemoteSimple);
 MemSet(nulls, 0, sizeof(nulls));
 tupdesc = CreateTemplateTupleDesc(4);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 1, "slot_name",
         TEXTOID, -1, 0);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 2, "consistent_point",
         TEXTOID, -1, 0);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 3, "snapshot_name",
         TEXTOID, -1, 0);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 4, "output_plugin",
         TEXTOID, -1, 0);


 tstate = begin_tup_output_tupdesc(dest, tupdesc, &TTSOpsVirtual);


 slot_name = NameStr(MyReplicationSlot->data.name);
 values[0] = CStringGetTextDatum(slot_name);


 values[1] = CStringGetTextDatum(xloc);


 if (snapshot_name != ((void*)0))
  values[2] = CStringGetTextDatum(snapshot_name);
 else
  nulls[2] = 1;


 if (cmd->plugin != ((void*)0))
  values[3] = CStringGetTextDatum(cmd->plugin);
 else
  nulls[3] = 1;


 do_tup_output(tstate, values, nulls);
 end_tup_output(tstate);

 ReplicationSlotRelease();
}
