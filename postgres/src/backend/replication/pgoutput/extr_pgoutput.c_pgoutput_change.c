
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_26__ {int out; scalar_t__ output_plugin_private; } ;
struct TYPE_25__ {int context; } ;
struct TYPE_18__ {int pubdelete; int pubupdate; int pubinsert; } ;
struct TYPE_24__ {TYPE_1__ pubactions; } ;
struct TYPE_21__ {TYPE_3__* oldtuple; TYPE_2__* newtuple; } ;
struct TYPE_22__ {TYPE_4__ tp; } ;
struct TYPE_23__ {int action; TYPE_5__ data; } ;
struct TYPE_20__ {int tuple; } ;
struct TYPE_19__ {int tuple; } ;
typedef int ReorderBufferTXN ;
typedef TYPE_6__ ReorderBufferChange ;
typedef TYPE_7__ RelationSyncEntry ;
typedef int Relation ;
typedef TYPE_8__ PGOutputData ;
typedef int MemoryContext ;
typedef TYPE_9__ LogicalDecodingContext ;
typedef int * HeapTuple ;


 int Assert (int) ;
 int DEBUG1 ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int OutputPluginPrepareWrite (TYPE_9__*,int) ;
 int OutputPluginWrite (TYPE_9__*,int) ;



 int RelationGetRelid (int ) ;
 int elog (int ,char*) ;
 TYPE_7__* get_rel_sync_entry (TYPE_8__*,int ) ;
 int is_publishable_relation (int ) ;
 int logicalrep_write_delete (int ,int ,int *) ;
 int logicalrep_write_insert (int ,int ,int *) ;
 int logicalrep_write_update (int ,int ,int *,int *) ;
 int maybe_send_schema (TYPE_9__*,int ,TYPE_7__*) ;

__attribute__((used)) static void
pgoutput_change(LogicalDecodingContext *ctx, ReorderBufferTXN *txn,
    Relation relation, ReorderBufferChange *change)
{
 PGOutputData *data = (PGOutputData *) ctx->output_plugin_private;
 MemoryContext old;
 RelationSyncEntry *relentry;

 if (!is_publishable_relation(relation))
  return;

 relentry = get_rel_sync_entry(data, RelationGetRelid(relation));


 switch (change->action)
 {
  case 129:
   if (!relentry->pubactions.pubinsert)
    return;
   break;
  case 128:
   if (!relentry->pubactions.pubupdate)
    return;
   break;
  case 130:
   if (!relentry->pubactions.pubdelete)
    return;
   break;
  default:
   Assert(0);
 }


 old = MemoryContextSwitchTo(data->context);

 maybe_send_schema(ctx, relation, relentry);


 switch (change->action)
 {
  case 129:
   OutputPluginPrepareWrite(ctx, 1);
   logicalrep_write_insert(ctx->out, relation,
         &change->data.tp.newtuple->tuple);
   OutputPluginWrite(ctx, 1);
   break;
  case 128:
   {
    HeapTuple oldtuple = change->data.tp.oldtuple ?
    &change->data.tp.oldtuple->tuple : ((void*)0);

    OutputPluginPrepareWrite(ctx, 1);
    logicalrep_write_update(ctx->out, relation, oldtuple,
          &change->data.tp.newtuple->tuple);
    OutputPluginWrite(ctx, 1);
    break;
   }
  case 130:
   if (change->data.tp.oldtuple)
   {
    OutputPluginPrepareWrite(ctx, 1);
    logicalrep_write_delete(ctx->out, relation,
          &change->data.tp.oldtuple->tuple);
    OutputPluginWrite(ctx, 1);
   }
   else
    elog(DEBUG1, "didn't send DELETE change because of missing oldtuple");
   break;
  default:
   Assert(0);
 }


 MemoryContextSwitchTo(old);
 MemoryContextReset(data->context);
}
