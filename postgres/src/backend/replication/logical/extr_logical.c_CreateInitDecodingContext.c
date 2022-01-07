
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int XLogPageReadCB ;
typedef void* TransactionId ;
struct TYPE_17__ {int receive_rewrites; } ;
struct TYPE_13__ {int * startup_cb; } ;
struct TYPE_16__ {TYPE_7__ options; TYPE_3__* reorder; TYPE_2__ callbacks; int context; } ;
struct TYPE_12__ {scalar_t__ database; void* catalog_xmin; int restart_lsn; int plugin; int name; } ;
struct TYPE_15__ {int mutex; void* effective_xmin; TYPE_1__ data; void* effective_catalog_xmin; } ;
struct TYPE_14__ {int output_rewrites; } ;
typedef TYPE_4__ ReplicationSlot ;
typedef int MemoryContext ;
typedef int LogicalOutputPluginWriterWrite ;
typedef int LogicalOutputPluginWriterUpdateProgress ;
typedef int LogicalOutputPluginWriterPrepareWrite ;
typedef TYPE_5__ LogicalDecodingContext ;
typedef int List ;


 int ERRCODE_ACTIVE_SQL_TRANSACTION ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 void* GetOldestSafeDecodingTransactionId (int) ;
 scalar_t__ GetTopTransactionIdIfAny () ;
 scalar_t__ InvalidTransactionId ;
 scalar_t__ IsTransactionState () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ MyDatabaseId ;
 TYPE_4__* MyReplicationSlot ;
 int NAMEDATALEN ;
 int NIL ;
 int NameStr (int ) ;
 int ProcArrayLock ;
 int ReplicationSlotMarkDirty () ;
 int ReplicationSlotReserveWal () ;
 int ReplicationSlotSave () ;
 int ReplicationSlotsComputeRequiredXmin (int) ;
 scalar_t__ SlotIsPhysical (TYPE_4__*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_5__* StartupDecodingContext (int ,int ,void*,int,int,int ,int ,int ,int ) ;
 int StrNCpy (int ,char*,int ) ;
 scalar_t__ XLogRecPtrIsInvalid (int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int startup_cb_wrapper (TYPE_5__*,TYPE_7__*,int) ;

LogicalDecodingContext *
CreateInitDecodingContext(char *plugin,
        List *output_plugin_options,
        bool need_full_snapshot,
        XLogRecPtr restart_lsn,
        XLogPageReadCB read_page,
        LogicalOutputPluginWriterPrepareWrite prepare_write,
        LogicalOutputPluginWriterWrite do_write,
        LogicalOutputPluginWriterUpdateProgress update_progress)
{
 TransactionId xmin_horizon = InvalidTransactionId;
 ReplicationSlot *slot;
 LogicalDecodingContext *ctx;
 MemoryContext old_context;


 slot = MyReplicationSlot;


 if (slot == ((void*)0))
  elog(ERROR, "cannot perform logical decoding without an acquired slot");

 if (plugin == ((void*)0))
  elog(ERROR, "cannot initialize logical decoding without a specified plugin");


 if (SlotIsPhysical(slot))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("cannot use physical replication slot for logical decoding")));

 if (slot->data.database != MyDatabaseId)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("replication slot \"%s\" was not created in this database",
      NameStr(slot->data.name))));

 if (IsTransactionState() &&
  GetTopTransactionIdIfAny() != InvalidTransactionId)
  ereport(ERROR,
    (errcode(ERRCODE_ACTIVE_SQL_TRANSACTION),
     errmsg("cannot create logical replication slot in transaction that has performed writes")));


 SpinLockAcquire(&slot->mutex);
 StrNCpy(NameStr(slot->data.plugin), plugin, NAMEDATALEN);
 SpinLockRelease(&slot->mutex);

 if (XLogRecPtrIsInvalid(restart_lsn))
  ReplicationSlotReserveWal();
 else
 {
  SpinLockAcquire(&slot->mutex);
  slot->data.restart_lsn = restart_lsn;
  SpinLockRelease(&slot->mutex);
 }
 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);

 xmin_horizon = GetOldestSafeDecodingTransactionId(!need_full_snapshot);

 SpinLockAcquire(&slot->mutex);
 slot->effective_catalog_xmin = xmin_horizon;
 slot->data.catalog_xmin = xmin_horizon;
 if (need_full_snapshot)
  slot->effective_xmin = xmin_horizon;
 SpinLockRelease(&slot->mutex);

 ReplicationSlotsComputeRequiredXmin(1);

 LWLockRelease(ProcArrayLock);

 ReplicationSlotMarkDirty();
 ReplicationSlotSave();

 ctx = StartupDecodingContext(NIL, restart_lsn, xmin_horizon,
         need_full_snapshot, 0,
         read_page, prepare_write, do_write,
         update_progress);


 old_context = MemoryContextSwitchTo(ctx->context);
 if (ctx->callbacks.startup_cb != ((void*)0))
  startup_cb_wrapper(ctx, &ctx->options, 1);
 MemoryContextSwitchTo(old_context);

 ctx->reorder->output_rewrites = ctx->options.receive_rewrites;

 return ctx;
}
