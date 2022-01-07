
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int ecxt_per_tuple_memory; } ;
struct TYPE_11__ {int ssup; scalar_t__ risnull; int rdatum; scalar_t__ lisnull; int ldatum; } ;
struct TYPE_8__ {TYPE_5__* ps_ExprContext; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;
struct TYPE_10__ {int mj_NumClauses; scalar_t__ mj_ConstFalseJoin; TYPE_4__* mj_Clauses; TYPE_2__ js; } ;
typedef TYPE_3__ MergeJoinState ;
typedef TYPE_4__* MergeJoinClause ;
typedef int MemoryContext ;
typedef TYPE_5__ ExprContext ;


 int ApplySortComparator (int ,scalar_t__,int ,scalar_t__,int *) ;
 int MemoryContextSwitchTo (int ) ;
 int ResetExprContext (TYPE_5__*) ;

__attribute__((used)) static int
MJCompare(MergeJoinState *mergestate)
{
 int result = 0;
 bool nulleqnull = 0;
 ExprContext *econtext = mergestate->js.ps.ps_ExprContext;
 int i;
 MemoryContext oldContext;





 ResetExprContext(econtext);

 oldContext = MemoryContextSwitchTo(econtext->ecxt_per_tuple_memory);

 for (i = 0; i < mergestate->mj_NumClauses; i++)
 {
  MergeJoinClause clause = &mergestate->mj_Clauses[i];




  if (clause->lisnull && clause->risnull)
  {
   nulleqnull = 1;
   continue;
  }

  result = ApplySortComparator(clause->ldatum, clause->lisnull,
          clause->rdatum, clause->risnull,
          &clause->ssup);

  if (result != 0)
   break;
 }
 if (result == 0 &&
  (nulleqnull || mergestate->mj_ConstFalseJoin))
  result = 1;

 MemoryContextSwitchTo(oldContext);

 return result;
}
