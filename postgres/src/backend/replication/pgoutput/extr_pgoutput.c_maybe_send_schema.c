
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_15__ {scalar_t__ atttypid; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_14__ {int out; } ;
struct TYPE_13__ {int schema_sent; } ;
struct TYPE_12__ {int natts; } ;
typedef TYPE_2__ RelationSyncEntry ;
typedef int Relation ;
typedef TYPE_3__ LogicalDecodingContext ;
typedef TYPE_4__* Form_pg_attribute ;


 scalar_t__ FirstGenbkiObjectId ;
 int OutputPluginPrepareWrite (TYPE_3__*,int) ;
 int OutputPluginWrite (TYPE_3__*,int) ;
 TYPE_1__* RelationGetDescr (int ) ;
 TYPE_4__* TupleDescAttr (TYPE_1__*,int) ;
 int logicalrep_write_rel (int ,int ) ;
 int logicalrep_write_typ (int ,scalar_t__) ;

__attribute__((used)) static void
maybe_send_schema(LogicalDecodingContext *ctx,
      Relation relation, RelationSyncEntry *relentry)
{
 if (!relentry->schema_sent)
 {
  TupleDesc desc;
  int i;

  desc = RelationGetDescr(relation);
  for (i = 0; i < desc->natts; i++)
  {
   Form_pg_attribute att = TupleDescAttr(desc, i);

   if (att->attisdropped || att->attgenerated)
    continue;

   if (att->atttypid < FirstGenbkiObjectId)
    continue;

   OutputPluginPrepareWrite(ctx, 0);
   logicalrep_write_typ(ctx->out, att->atttypid);
   OutputPluginWrite(ctx, 0);
  }

  OutputPluginPrepareWrite(ctx, 0);
  logicalrep_write_rel(ctx->out, relation);
  OutputPluginWrite(ctx, 0);
  relentry->schema_sent = 1;
 }
}
