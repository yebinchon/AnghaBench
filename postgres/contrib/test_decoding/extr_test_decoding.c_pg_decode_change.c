
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_20__ {int xact_wrote_changes; int context; scalar_t__ skip_empty_xacts; } ;
typedef TYPE_5__ TestDecodingData ;
struct TYPE_23__ {int relname; scalar_t__ relrewrite; } ;
struct TYPE_22__ {int out; TYPE_5__* output_plugin_private; } ;
struct TYPE_18__ {TYPE_2__* oldtuple; TYPE_1__* newtuple; } ;
struct TYPE_19__ {TYPE_3__ tp; } ;
struct TYPE_21__ {int action; TYPE_4__ data; } ;
struct TYPE_17__ {int tuple; } ;
struct TYPE_16__ {int tuple; } ;
typedef int ReorderBufferTXN ;
typedef TYPE_6__ ReorderBufferChange ;
typedef int Relation ;
typedef int MemoryContext ;
typedef TYPE_7__ LogicalDecodingContext ;
typedef TYPE_8__* Form_pg_class ;


 int Assert (int) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int NameStr (int ) ;
 int OutputPluginPrepareWrite (TYPE_7__*,int) ;
 int OutputPluginWrite (TYPE_7__*,int) ;



 int RelationGetDescr (int ) ;
 TYPE_8__* RelationGetForm (int ) ;
 int RelationGetRelid (int ) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 int get_namespace_name (int ) ;
 int get_rel_name (scalar_t__) ;
 int get_rel_namespace (int ) ;
 int pg_output_begin (TYPE_7__*,TYPE_5__*,int *,int) ;
 char* quote_qualified_identifier (int ,int ) ;
 int tuple_to_stringinfo (int ,int ,int *,int) ;

__attribute__((used)) static void
pg_decode_change(LogicalDecodingContext *ctx, ReorderBufferTXN *txn,
     Relation relation, ReorderBufferChange *change)
{
 TestDecodingData *data;
 Form_pg_class class_form;
 TupleDesc tupdesc;
 MemoryContext old;

 data = ctx->output_plugin_private;


 if (data->skip_empty_xacts && !data->xact_wrote_changes)
 {
  pg_output_begin(ctx, data, txn, 0);
 }
 data->xact_wrote_changes = 1;

 class_form = RelationGetForm(relation);
 tupdesc = RelationGetDescr(relation);


 old = MemoryContextSwitchTo(data->context);

 OutputPluginPrepareWrite(ctx, 1);

 appendStringInfoString(ctx->out, "table ");
 appendStringInfoString(ctx->out,
         quote_qualified_identifier(
               get_namespace_name(
                   get_rel_namespace(RelationGetRelid(relation))),
               class_form->relrewrite ?
               get_rel_name(class_form->relrewrite) :
               NameStr(class_form->relname)));
 appendStringInfoChar(ctx->out, ':');

 switch (change->action)
 {
  case 129:
   appendStringInfoString(ctx->out, " INSERT:");
   if (change->data.tp.newtuple == ((void*)0))
    appendStringInfoString(ctx->out, " (no-tuple-data)");
   else
    tuple_to_stringinfo(ctx->out, tupdesc,
         &change->data.tp.newtuple->tuple,
         0);
   break;
  case 128:
   appendStringInfoString(ctx->out, " UPDATE:");
   if (change->data.tp.oldtuple != ((void*)0))
   {
    appendStringInfoString(ctx->out, " old-key:");
    tuple_to_stringinfo(ctx->out, tupdesc,
         &change->data.tp.oldtuple->tuple,
         1);
    appendStringInfoString(ctx->out, " new-tuple:");
   }

   if (change->data.tp.newtuple == ((void*)0))
    appendStringInfoString(ctx->out, " (no-tuple-data)");
   else
    tuple_to_stringinfo(ctx->out, tupdesc,
         &change->data.tp.newtuple->tuple,
         0);
   break;
  case 130:
   appendStringInfoString(ctx->out, " DELETE:");


   if (change->data.tp.oldtuple == ((void*)0))
    appendStringInfoString(ctx->out, " (no-tuple-data)");

   else
    tuple_to_stringinfo(ctx->out, tupdesc,
         &change->data.tp.oldtuple->tuple,
         1);
   break;
  default:
   Assert(0);
 }

 MemoryContextSwitchTo(old);
 MemoryContextReset(data->context);

 OutputPluginWrite(ctx, 1);
}
