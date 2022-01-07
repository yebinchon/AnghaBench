
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int xact_wrote_changes; int context; scalar_t__ skip_empty_xacts; } ;
typedef TYPE_4__ TestDecodingData ;
struct TYPE_21__ {int out; TYPE_4__* output_plugin_private; } ;
struct TYPE_20__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {scalar_t__ cascade; scalar_t__ restart_seqs; } ;
struct TYPE_17__ {TYPE_2__ truncate; } ;
struct TYPE_19__ {TYPE_3__ data; } ;
struct TYPE_15__ {int relname; int relnamespace; } ;
typedef int ReorderBufferTXN ;
typedef TYPE_5__ ReorderBufferChange ;
typedef TYPE_6__* Relation ;
typedef int MemoryContext ;
typedef TYPE_7__ LogicalDecodingContext ;


 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int NameStr (int ) ;
 int OutputPluginPrepareWrite (TYPE_7__*,int) ;
 int OutputPluginWrite (TYPE_7__*,int) ;
 int appendStringInfoString (int ,char*) ;
 int get_namespace_name (int ) ;
 int pg_output_begin (TYPE_7__*,TYPE_4__*,int *,int) ;
 char* quote_qualified_identifier (int ,int ) ;

__attribute__((used)) static void
pg_decode_truncate(LogicalDecodingContext *ctx, ReorderBufferTXN *txn,
       int nrelations, Relation relations[], ReorderBufferChange *change)
{
 TestDecodingData *data;
 MemoryContext old;
 int i;

 data = ctx->output_plugin_private;


 if (data->skip_empty_xacts && !data->xact_wrote_changes)
 {
  pg_output_begin(ctx, data, txn, 0);
 }
 data->xact_wrote_changes = 1;


 old = MemoryContextSwitchTo(data->context);

 OutputPluginPrepareWrite(ctx, 1);

 appendStringInfoString(ctx->out, "table ");

 for (i = 0; i < nrelations; i++)
 {
  if (i > 0)
   appendStringInfoString(ctx->out, ", ");

  appendStringInfoString(ctx->out,
          quote_qualified_identifier(get_namespace_name(relations[i]->rd_rel->relnamespace),
                NameStr(relations[i]->rd_rel->relname)));
 }

 appendStringInfoString(ctx->out, ": TRUNCATE:");

 if (change->data.truncate.restart_seqs
  || change->data.truncate.cascade)
 {
  if (change->data.truncate.restart_seqs)
   appendStringInfoString(ctx->out, " restart_seqs");
  if (change->data.truncate.cascade)
   appendStringInfoString(ctx->out, " cascade");
 }
 else
  appendStringInfoString(ctx->out, " (no-flags)");

 MemoryContextSwitchTo(old);
 MemoryContextReset(data->context);

 OutputPluginWrite(ctx, 1);
}
