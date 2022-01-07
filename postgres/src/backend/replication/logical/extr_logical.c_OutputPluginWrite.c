
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LogicalDecodingContext {int prepared_write; int write_xid; int write_location; int (* write ) (struct LogicalDecodingContext*,int ,int ,int) ;} ;


 int ERROR ;
 int elog (int ,char*) ;
 int stub1 (struct LogicalDecodingContext*,int ,int ,int) ;

void
OutputPluginWrite(struct LogicalDecodingContext *ctx, bool last_write)
{
 if (!ctx->prepared_write)
  elog(ERROR, "OutputPluginPrepareWrite needs to be called before OutputPluginWrite");

 ctx->write(ctx, ctx->write_location, ctx->write_xid, last_write);
 ctx->prepared_write = 0;
}
