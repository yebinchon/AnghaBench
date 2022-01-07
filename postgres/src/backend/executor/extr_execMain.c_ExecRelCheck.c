
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_20__ {char const* ccname; int ccbin; } ;
struct TYPE_19__ {int es_query_cxt; } ;
struct TYPE_18__ {int * ecxt_scantuple; } ;
struct TYPE_17__ {TYPE_2__* rd_att; } ;
struct TYPE_16__ {int ** ri_ConstraintExprs; TYPE_4__* ri_RelationDesc; } ;
struct TYPE_15__ {TYPE_1__* constr; } ;
struct TYPE_14__ {int num_check; TYPE_7__* check; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef TYPE_4__* Relation ;
typedef int MemoryContext ;
typedef int ExprState ;
typedef TYPE_5__ ExprContext ;
typedef int Expr ;
typedef TYPE_6__ EState ;
typedef TYPE_7__ ConstrCheck ;


 int ExecCheck (int *,TYPE_5__*) ;
 int * ExecPrepareExpr (int *,TYPE_6__*) ;
 TYPE_5__* GetPerTupleExprContext (TYPE_6__*) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ palloc (int) ;
 int * stringToNode (int ) ;

__attribute__((used)) static const char *
ExecRelCheck(ResultRelInfo *resultRelInfo,
    TupleTableSlot *slot, EState *estate)
{
 Relation rel = resultRelInfo->ri_RelationDesc;
 int ncheck = rel->rd_att->constr->num_check;
 ConstrCheck *check = rel->rd_att->constr->check;
 ExprContext *econtext;
 MemoryContext oldContext;
 int i;






 if (resultRelInfo->ri_ConstraintExprs == ((void*)0))
 {
  oldContext = MemoryContextSwitchTo(estate->es_query_cxt);
  resultRelInfo->ri_ConstraintExprs =
   (ExprState **) palloc(ncheck * sizeof(ExprState *));
  for (i = 0; i < ncheck; i++)
  {
   Expr *checkconstr;

   checkconstr = stringToNode(check[i].ccbin);
   resultRelInfo->ri_ConstraintExprs[i] =
    ExecPrepareExpr(checkconstr, estate);
  }
  MemoryContextSwitchTo(oldContext);
 }





 econtext = GetPerTupleExprContext(estate);


 econtext->ecxt_scantuple = slot;


 for (i = 0; i < ncheck; i++)
 {
  ExprState *checkconstr = resultRelInfo->ri_ConstraintExprs[i];






  if (!ExecCheck(checkconstr, econtext))
   return check[i].ccname;
 }


 return ((void*)0);
}
