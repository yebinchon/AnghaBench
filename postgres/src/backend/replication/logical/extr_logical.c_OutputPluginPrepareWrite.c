
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LogicalDecodingContext {int prepared_write; int write_xid; int write_location; int (* prepare_write ) (struct LogicalDecodingContext*,int ,int ,int) ;int accept_writes; } ;


 int ERROR ;
 int elog (int ,char*) ;
 int stub1 (struct LogicalDecodingContext*,int ,int ,int) ;

void
OutputPluginPrepareWrite(struct LogicalDecodingContext *ctx, bool last_write)
{
 if (!ctx->accept_writes)
  elog(ERROR, "writes are only accepted in commit, begin and change callbacks");

 ctx->prepare_write(ctx, ctx->write_location, ctx->write_xid, last_write);
 ctx->prepared_write = 1;
}
