
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_5__ {int out; } ;
typedef int Size ;
typedef int ReorderBufferTXN ;
typedef TYPE_1__ LogicalDecodingContext ;


 int OutputPluginPrepareWrite (TYPE_1__*,int) ;
 int OutputPluginWrite (TYPE_1__*,int) ;
 int appendBinaryStringInfo (int ,char const*,int ) ;
 int appendStringInfo (int ,char*,int,char const*,int ) ;

__attribute__((used)) static void
pg_decode_message(LogicalDecodingContext *ctx,
      ReorderBufferTXN *txn, XLogRecPtr lsn, bool transactional,
      const char *prefix, Size sz, const char *message)
{
 OutputPluginPrepareWrite(ctx, 1);
 appendStringInfo(ctx->out, "message: transactional: %d prefix: %s, sz: %zu content:",
      transactional, prefix, sz);
 appendBinaryStringInfo(ctx->out, message, sz);
 OutputPluginWrite(ctx, 1);
}
