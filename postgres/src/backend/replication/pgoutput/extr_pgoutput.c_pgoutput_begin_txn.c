
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int out; } ;
struct TYPE_8__ {scalar_t__ origin_id; int origin_lsn; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef TYPE_2__ LogicalDecodingContext ;


 scalar_t__ InvalidRepOriginId ;
 int OutputPluginPrepareWrite (TYPE_2__*,int) ;
 int OutputPluginWrite (TYPE_2__*,int) ;
 int logicalrep_write_begin (int ,TYPE_1__*) ;
 int logicalrep_write_origin (int ,char*,int ) ;
 scalar_t__ replorigin_by_oid (scalar_t__,int,char**) ;

__attribute__((used)) static void
pgoutput_begin_txn(LogicalDecodingContext *ctx, ReorderBufferTXN *txn)
{
 bool send_replication_origin = txn->origin_id != InvalidRepOriginId;

 OutputPluginPrepareWrite(ctx, !send_replication_origin);
 logicalrep_write_begin(ctx->out, txn);

 if (send_replication_origin)
 {
  char *origin;


  OutputPluginWrite(ctx, 0);
  OutputPluginPrepareWrite(ctx, 1);
  if (replorigin_by_oid(txn->origin_id, 1, &origin))
   logicalrep_write_origin(ctx->out, origin, txn->origin_lsn);
 }

 OutputPluginWrite(ctx, 1);
}
