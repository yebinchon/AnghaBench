
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_23__ {int* tts_isnull; int* tts_values; } ;
typedef TYPE_2__ TupleTableSlot ;
typedef TYPE_3__* TupleDesc ;
struct TYPE_28__ {int es_query_cxt; TYPE_4__* es_result_relation_info; } ;
struct TYPE_27__ {TYPE_2__* ecxt_scantuple; } ;
struct TYPE_26__ {scalar_t__ attgenerated; int attlen; int attbyval; } ;
struct TYPE_25__ {int ** ri_GeneratedExprs; int ri_RelationDesc; } ;
struct TYPE_24__ {int natts; TYPE_1__* constr; } ;
struct TYPE_22__ {scalar_t__ has_generated_stored; } ;
typedef TYPE_4__ ResultRelInfo ;
typedef int Relation ;
typedef int MemoryContext ;
typedef TYPE_5__* Form_pg_attribute ;
typedef int ExprState ;
typedef TYPE_6__ ExprContext ;
typedef int Expr ;
typedef TYPE_7__ EState ;
typedef int Datum ;


 scalar_t__ ATTRIBUTE_GENERATED_STORED ;
 int Assert (int) ;
 int ERROR ;
 int ExecClearTuple (TYPE_2__*) ;
 int ExecEvalExpr (int *,TYPE_6__*,int*) ;
 int ExecMaterializeSlot (TYPE_2__*) ;
 int * ExecPrepareExpr (int *,TYPE_7__*) ;
 int ExecStoreVirtualTuple (TYPE_2__*) ;
 TYPE_6__* GetPerTupleExprContext (TYPE_7__*) ;
 int GetPerTupleMemoryContext (TYPE_7__*) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_3__* RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 TYPE_5__* TupleDescAttr (TYPE_3__*,int) ;
 scalar_t__ build_column_default (int ,int) ;
 int datumCopy (int,int ,int ) ;
 int elog (int ,char*,int,int ) ;
 int memcpy (int*,int*,int) ;
 int* palloc (int) ;
 int slot_getallattrs (TYPE_2__*) ;

void
ExecComputeStoredGenerated(EState *estate, TupleTableSlot *slot)
{
 ResultRelInfo *resultRelInfo = estate->es_result_relation_info;
 Relation rel = resultRelInfo->ri_RelationDesc;
 TupleDesc tupdesc = RelationGetDescr(rel);
 int natts = tupdesc->natts;
 MemoryContext oldContext;
 Datum *values;
 bool *nulls;

 Assert(tupdesc->constr && tupdesc->constr->has_generated_stored);






 if (resultRelInfo->ri_GeneratedExprs == ((void*)0))
 {
  oldContext = MemoryContextSwitchTo(estate->es_query_cxt);

  resultRelInfo->ri_GeneratedExprs =
   (ExprState **) palloc(natts * sizeof(ExprState *));

  for (int i = 0; i < natts; i++)
  {
   if (TupleDescAttr(tupdesc, i)->attgenerated == ATTRIBUTE_GENERATED_STORED)
   {
    Expr *expr;

    expr = (Expr *) build_column_default(rel, i + 1);
    if (expr == ((void*)0))
     elog(ERROR, "no generation expression found for column number %d of table \"%s\"",
       i + 1, RelationGetRelationName(rel));

    resultRelInfo->ri_GeneratedExprs[i] = ExecPrepareExpr(expr, estate);
   }
  }

  MemoryContextSwitchTo(oldContext);
 }

 oldContext = MemoryContextSwitchTo(GetPerTupleMemoryContext(estate));

 values = palloc(sizeof(*values) * natts);
 nulls = palloc(sizeof(*nulls) * natts);

 slot_getallattrs(slot);
 memcpy(nulls, slot->tts_isnull, sizeof(*nulls) * natts);

 for (int i = 0; i < natts; i++)
 {
  Form_pg_attribute attr = TupleDescAttr(tupdesc, i);

  if (attr->attgenerated == ATTRIBUTE_GENERATED_STORED)
  {
   ExprContext *econtext;
   Datum val;
   bool isnull;

   econtext = GetPerTupleExprContext(estate);
   econtext->ecxt_scantuple = slot;

   val = ExecEvalExpr(resultRelInfo->ri_GeneratedExprs[i], econtext, &isnull);

   values[i] = val;
   nulls[i] = isnull;
  }
  else
  {
   if (!nulls[i])
    values[i] = datumCopy(slot->tts_values[i], attr->attbyval, attr->attlen);
  }
 }

 ExecClearTuple(slot);
 memcpy(slot->tts_values, values, sizeof(*values) * natts);
 memcpy(slot->tts_isnull, nulls, sizeof(*nulls) * natts);
 ExecStoreVirtualTuple(slot);
 ExecMaterializeSlot(slot);

 MemoryContextSwitchTo(oldContext);
}
