
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * shutdown_cb; } ;
struct TYPE_6__ {int context; int reader; int snapshot_builder; int reorder; TYPE_1__ callbacks; } ;
typedef TYPE_2__ LogicalDecodingContext ;


 int FreeSnapshotBuilder (int ) ;
 int MemoryContextDelete (int ) ;
 int ReorderBufferFree (int ) ;
 int XLogReaderFree (int ) ;
 int shutdown_cb_wrapper (TYPE_2__*) ;

void
FreeDecodingContext(LogicalDecodingContext *ctx)
{
 if (ctx->callbacks.shutdown_cb != ((void*)0))
  shutdown_cb_wrapper(ctx);

 ReorderBufferFree(ctx->reorder);
 FreeSnapshotBuilder(ctx->snapshot_builder);
 XLogReaderFree(ctx->reader);
 MemoryContextDelete(ctx->context);
}
