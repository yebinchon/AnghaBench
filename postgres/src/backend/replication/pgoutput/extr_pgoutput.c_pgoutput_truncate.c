
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_22__ {int out; scalar_t__ output_plugin_private; } ;
struct TYPE_21__ {int context; } ;
struct TYPE_16__ {int pubtruncate; } ;
struct TYPE_20__ {TYPE_1__ pubactions; } ;
struct TYPE_17__ {int restart_seqs; int cascade; } ;
struct TYPE_18__ {TYPE_2__ truncate; } ;
struct TYPE_19__ {TYPE_3__ data; } ;
typedef int ReorderBufferTXN ;
typedef TYPE_4__ ReorderBufferChange ;
typedef TYPE_5__ RelationSyncEntry ;
typedef int Relation ;
typedef TYPE_6__ PGOutputData ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_7__ LogicalDecodingContext ;


 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int OutputPluginPrepareWrite (TYPE_7__*,int) ;
 int OutputPluginWrite (TYPE_7__*,int) ;
 int RelationGetRelid (int ) ;
 TYPE_5__* get_rel_sync_entry (TYPE_6__*,int ) ;
 int is_publishable_relation (int ) ;
 int logicalrep_write_truncate (int ,int,int *,int ,int ) ;
 int maybe_send_schema (TYPE_7__*,int ,TYPE_5__*) ;
 int * palloc0 (int) ;

__attribute__((used)) static void
pgoutput_truncate(LogicalDecodingContext *ctx, ReorderBufferTXN *txn,
      int nrelations, Relation relations[], ReorderBufferChange *change)
{
 PGOutputData *data = (PGOutputData *) ctx->output_plugin_private;
 MemoryContext old;
 RelationSyncEntry *relentry;
 int i;
 int nrelids;
 Oid *relids;

 old = MemoryContextSwitchTo(data->context);

 relids = palloc0(nrelations * sizeof(Oid));
 nrelids = 0;

 for (i = 0; i < nrelations; i++)
 {
  Relation relation = relations[i];
  Oid relid = RelationGetRelid(relation);

  if (!is_publishable_relation(relation))
   continue;

  relentry = get_rel_sync_entry(data, relid);

  if (!relentry->pubactions.pubtruncate)
   continue;

  relids[nrelids++] = relid;
  maybe_send_schema(ctx, relation, relentry);
 }

 if (nrelids > 0)
 {
  OutputPluginPrepareWrite(ctx, 1);
  logicalrep_write_truncate(ctx->out,
          nrelids,
          relids,
          change->data.truncate.cascade,
          change->data.truncate.restart_seqs);
  OutputPluginWrite(ctx, 1);
 }

 MemoryContextSwitchTo(old);
 MemoryContextReset(data->context);
}
