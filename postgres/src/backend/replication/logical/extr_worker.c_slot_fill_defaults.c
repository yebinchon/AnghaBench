
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * tts_isnull; int * tts_values; } ;
typedef TYPE_2__ TupleTableSlot ;
typedef TYPE_3__* TupleDesc ;
struct TYPE_14__ {scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_10__ {int natts; } ;
struct TYPE_13__ {scalar_t__* attrmap; int localrel; TYPE_1__ remoterel; } ;
struct TYPE_12__ {int natts; } ;
typedef TYPE_4__ LogicalRepRelMapEntry ;
typedef int ExprState ;
typedef int ExprContext ;
typedef int Expr ;
typedef int EState ;


 int ExecEvalExpr (int *,int *,int *) ;
 int * ExecInitExpr (int *,int *) ;
 int * GetPerTupleExprContext (int *) ;
 TYPE_3__* RelationGetDescr (int ) ;
 TYPE_7__* TupleDescAttr (TYPE_3__*,int) ;
 scalar_t__ build_column_default (int ,int) ;
 int * expression_planner (int *) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
slot_fill_defaults(LogicalRepRelMapEntry *rel, EState *estate,
       TupleTableSlot *slot)
{
 TupleDesc desc = RelationGetDescr(rel->localrel);
 int num_phys_attrs = desc->natts;
 int i;
 int attnum,
    num_defaults = 0;
 int *defmap;
 ExprState **defexprs;
 ExprContext *econtext;

 econtext = GetPerTupleExprContext(estate);


 if (num_phys_attrs == rel->remoterel.natts)
  return;

 defmap = (int *) palloc(num_phys_attrs * sizeof(int));
 defexprs = (ExprState **) palloc(num_phys_attrs * sizeof(ExprState *));

 for (attnum = 0; attnum < num_phys_attrs; attnum++)
 {
  Expr *defexpr;

  if (TupleDescAttr(desc, attnum)->attisdropped || TupleDescAttr(desc, attnum)->attgenerated)
   continue;

  if (rel->attrmap[attnum] >= 0)
   continue;

  defexpr = (Expr *) build_column_default(rel->localrel, attnum + 1);

  if (defexpr != ((void*)0))
  {

   defexpr = expression_planner(defexpr);


   defexprs[num_defaults] = ExecInitExpr(defexpr, ((void*)0));
   defmap[num_defaults] = attnum;
   num_defaults++;
  }

 }

 for (i = 0; i < num_defaults; i++)
  slot->tts_values[defmap[i]] =
   ExecEvalExpr(defexprs[i], econtext, &slot->tts_isnull[defmap[i]]);
}
