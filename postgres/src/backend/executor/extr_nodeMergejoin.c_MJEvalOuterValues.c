
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int ecxt_outertuple; int ecxt_per_tuple_memory; } ;
struct TYPE_8__ {int ssup_nulls_first; } ;
struct TYPE_10__ {TYPE_1__ ssup; scalar_t__ lisnull; int lexpr; int ldatum; } ;
struct TYPE_9__ {int mj_NumClauses; int mj_FillOuter; TYPE_3__* mj_Clauses; int mj_OuterTupleSlot; TYPE_4__* mj_OuterEContext; } ;
typedef TYPE_2__ MergeJoinState ;
typedef TYPE_3__* MergeJoinClause ;
typedef int MemoryContext ;
typedef scalar_t__ MJEvalResult ;
typedef TYPE_4__ ExprContext ;


 int ExecEvalExpr (int ,TYPE_4__*,scalar_t__*) ;
 scalar_t__ MJEVAL_ENDOFJOIN ;
 scalar_t__ MJEVAL_MATCHABLE ;
 scalar_t__ MJEVAL_NONMATCHABLE ;
 int MemoryContextSwitchTo (int ) ;
 int ResetExprContext (TYPE_4__*) ;
 scalar_t__ TupIsNull (int ) ;

__attribute__((used)) static MJEvalResult
MJEvalOuterValues(MergeJoinState *mergestate)
{
 ExprContext *econtext = mergestate->mj_OuterEContext;
 MJEvalResult result = MJEVAL_MATCHABLE;
 int i;
 MemoryContext oldContext;


 if (TupIsNull(mergestate->mj_OuterTupleSlot))
  return MJEVAL_ENDOFJOIN;

 ResetExprContext(econtext);

 oldContext = MemoryContextSwitchTo(econtext->ecxt_per_tuple_memory);

 econtext->ecxt_outertuple = mergestate->mj_OuterTupleSlot;

 for (i = 0; i < mergestate->mj_NumClauses; i++)
 {
  MergeJoinClause clause = &mergestate->mj_Clauses[i];

  clause->ldatum = ExecEvalExpr(clause->lexpr, econtext,
           &clause->lisnull);
  if (clause->lisnull)
  {

   if (i == 0 && !clause->ssup.ssup_nulls_first &&
    !mergestate->mj_FillOuter)
    result = MJEVAL_ENDOFJOIN;
   else if (result == MJEVAL_MATCHABLE)
    result = MJEVAL_NONMATCHABLE;
  }
 }

 MemoryContextSwitchTo(oldContext);

 return result;
}
