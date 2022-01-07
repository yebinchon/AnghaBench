
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int xact_wrote_changes; scalar_t__ skip_empty_xacts; } ;
typedef TYPE_1__ TestDecodingData ;
struct TYPE_7__ {TYPE_1__* output_plugin_private; } ;
typedef int ReorderBufferTXN ;
typedef TYPE_2__ LogicalDecodingContext ;


 int pg_output_begin (TYPE_2__*,TYPE_1__*,int *,int) ;

__attribute__((used)) static void
pg_decode_begin_txn(LogicalDecodingContext *ctx, ReorderBufferTXN *txn)
{
 TestDecodingData *data = ctx->output_plugin_private;

 data->xact_wrote_changes = 0;
 if (data->skip_empty_xacts)
  return;

 pg_output_begin(ctx, data, txn, 1);
}
