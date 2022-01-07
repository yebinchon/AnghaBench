
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ include_xids; } ;
typedef TYPE_1__ TestDecodingData ;
struct TYPE_11__ {int out; } ;
struct TYPE_10__ {int xid; } ;
typedef TYPE_2__ ReorderBufferTXN ;
typedef TYPE_3__ LogicalDecodingContext ;


 int OutputPluginPrepareWrite (TYPE_3__*,int) ;
 int OutputPluginWrite (TYPE_3__*,int) ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;

__attribute__((used)) static void
pg_output_begin(LogicalDecodingContext *ctx, TestDecodingData *data, ReorderBufferTXN *txn, bool last_write)
{
 OutputPluginPrepareWrite(ctx, last_write);
 if (data->include_xids)
  appendStringInfo(ctx->out, "BEGIN %u", txn->xid);
 else
  appendStringInfoString(ctx->out, "BEGIN");
 OutputPluginWrite(ctx, last_write);
}
