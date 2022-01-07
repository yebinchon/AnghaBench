
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_8__ {scalar_t__ include_timestamp; scalar_t__ include_xids; int xact_wrote_changes; scalar_t__ skip_empty_xacts; } ;
typedef TYPE_1__ TestDecodingData ;
struct TYPE_10__ {int out; TYPE_1__* output_plugin_private; } ;
struct TYPE_9__ {int commit_time; int xid; } ;
typedef TYPE_2__ ReorderBufferTXN ;
typedef TYPE_3__ LogicalDecodingContext ;


 int OutputPluginPrepareWrite (TYPE_3__*,int) ;
 int OutputPluginWrite (TYPE_3__*,int) ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;
 int timestamptz_to_str (int ) ;

__attribute__((used)) static void
pg_decode_commit_txn(LogicalDecodingContext *ctx, ReorderBufferTXN *txn,
      XLogRecPtr commit_lsn)
{
 TestDecodingData *data = ctx->output_plugin_private;

 if (data->skip_empty_xacts && !data->xact_wrote_changes)
  return;

 OutputPluginPrepareWrite(ctx, 1);
 if (data->include_xids)
  appendStringInfo(ctx->out, "COMMIT %u", txn->xid);
 else
  appendStringInfoString(ctx->out, "COMMIT");

 if (data->include_timestamp)
  appendStringInfo(ctx->out, " (at %s)",
       timestamptz_to_str(txn->commit_time));

 OutputPluginWrite(ctx, 1);
}
