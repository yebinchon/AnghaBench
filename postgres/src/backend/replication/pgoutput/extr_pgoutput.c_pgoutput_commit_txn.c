
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_6__ {int out; } ;
typedef int ReorderBufferTXN ;
typedef TYPE_1__ LogicalDecodingContext ;


 int OutputPluginPrepareWrite (TYPE_1__*,int) ;
 int OutputPluginUpdateProgress (TYPE_1__*) ;
 int OutputPluginWrite (TYPE_1__*,int) ;
 int logicalrep_write_commit (int ,int *,int ) ;

__attribute__((used)) static void
pgoutput_commit_txn(LogicalDecodingContext *ctx, ReorderBufferTXN *txn,
     XLogRecPtr commit_lsn)
{
 OutputPluginUpdateProgress(ctx);

 OutputPluginPrepareWrite(ctx, 1);
 logicalrep_write_commit(ctx->out, txn, commit_lsn);
 OutputPluginWrite(ctx, 1);
}
