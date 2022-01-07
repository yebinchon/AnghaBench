
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LogicalDecodingContext {int write_xid; int write_location; int (* update_progress ) (struct LogicalDecodingContext*,int ,int ) ;} ;


 int stub1 (struct LogicalDecodingContext*,int ,int ) ;

void
OutputPluginUpdateProgress(struct LogicalDecodingContext *ctx)
{
 if (!ctx->update_progress)
  return;

 ctx->update_progress(ctx, ctx->write_location, ctx->write_xid);
}
