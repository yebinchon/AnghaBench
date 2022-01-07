
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int XLogPageReadCB ;
typedef int TransactionId ;
struct TYPE_15__ {int vacuumFlags; } ;
struct TYPE_14__ {int message; int commit; int apply_truncate; int apply_change; int begin; TYPE_3__* private_data; } ;
struct TYPE_13__ {int fast_forward; int * output_plugin_options; int update_progress; int write; int prepare_write; int out; TYPE_7__* reorder; int snapshot_builder; int reader; TYPE_2__* slot; int callbacks; int context; } ;
struct TYPE_11__ {int plugin; } ;
struct TYPE_12__ {TYPE_1__ data; } ;
typedef TYPE_2__ ReplicationSlot ;
typedef int MemoryContext ;
typedef int LogicalOutputPluginWriterWrite ;
typedef int LogicalOutputPluginWriterUpdateProgress ;
typedef int LogicalOutputPluginWriterPrepareWrite ;
typedef TYPE_3__ LogicalDecodingContext ;
typedef int List ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int AllocateSnapshotBuilder (TYPE_7__*,int ,int ,int) ;
 int CurrentMemoryContext ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int IsTransactionOrTransactionBlock () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LoadOutputPlugin (int *,int ) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_9__* MyPgXact ;
 TYPE_2__* MyReplicationSlot ;
 int NameStr (int ) ;
 int PROC_IN_LOGICAL_DECODING ;
 int ProcArrayLock ;
 TYPE_7__* ReorderBufferAllocate () ;
 int XLogReaderAllocate (int ,int *,int ,TYPE_3__*) ;
 int begin_cb_wrapper ;
 int change_cb_wrapper ;
 int commit_cb_wrapper ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int makeStringInfo () ;
 int message_cb_wrapper ;
 TYPE_3__* palloc0 (int) ;
 int truncate_cb_wrapper ;
 int wal_segment_size ;

__attribute__((used)) static LogicalDecodingContext *
StartupDecodingContext(List *output_plugin_options,
        XLogRecPtr start_lsn,
        TransactionId xmin_horizon,
        bool need_full_snapshot,
        bool fast_forward,
        XLogPageReadCB read_page,
        LogicalOutputPluginWriterPrepareWrite prepare_write,
        LogicalOutputPluginWriterWrite do_write,
        LogicalOutputPluginWriterUpdateProgress update_progress)
{
 ReplicationSlot *slot;
 MemoryContext context,
    old_context;
 LogicalDecodingContext *ctx;


 slot = MyReplicationSlot;

 context = AllocSetContextCreate(CurrentMemoryContext,
         "Logical decoding context",
         ALLOCSET_DEFAULT_SIZES);
 old_context = MemoryContextSwitchTo(context);
 ctx = palloc0(sizeof(LogicalDecodingContext));

 ctx->context = context;





 if (!fast_forward)
  LoadOutputPlugin(&ctx->callbacks, NameStr(slot->data.plugin));
 if (!IsTransactionOrTransactionBlock())
 {
  LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);
  MyPgXact->vacuumFlags |= PROC_IN_LOGICAL_DECODING;
  LWLockRelease(ProcArrayLock);
 }

 ctx->slot = slot;

 ctx->reader = XLogReaderAllocate(wal_segment_size, ((void*)0), read_page, ctx);
 if (!ctx->reader)
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));

 ctx->reorder = ReorderBufferAllocate();
 ctx->snapshot_builder =
  AllocateSnapshotBuilder(ctx->reorder, xmin_horizon, start_lsn,
        need_full_snapshot);

 ctx->reorder->private_data = ctx;


 ctx->reorder->begin = begin_cb_wrapper;
 ctx->reorder->apply_change = change_cb_wrapper;
 ctx->reorder->apply_truncate = truncate_cb_wrapper;
 ctx->reorder->commit = commit_cb_wrapper;
 ctx->reorder->message = message_cb_wrapper;

 ctx->out = makeStringInfo();
 ctx->prepare_write = prepare_write;
 ctx->write = do_write;
 ctx->update_progress = update_progress;

 ctx->output_plugin_options = output_plugin_options;

 ctx->fast_forward = fast_forward;

 MemoryContextSwitchTo(old_context);

 return ctx;
}
