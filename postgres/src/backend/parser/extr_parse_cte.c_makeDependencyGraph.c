
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* cte; } ;
struct TYPE_7__ {scalar_t__ ctequery; } ;
struct TYPE_6__ {int numitems; int curitem; scalar_t__ innerwiths; TYPE_5__* items; int pstate; } ;
typedef int Node ;
typedef TYPE_1__ CteState ;
typedef TYPE_2__ CommonTableExpr ;


 int Assert (int) ;
 scalar_t__ NIL ;
 int TopologicalSort (int ,TYPE_5__*,int) ;
 int makeDependencyGraphWalker (int *,TYPE_1__*) ;

__attribute__((used)) static void
makeDependencyGraph(CteState *cstate)
{
 int i;

 for (i = 0; i < cstate->numitems; i++)
 {
  CommonTableExpr *cte = cstate->items[i].cte;

  cstate->curitem = i;
  cstate->innerwiths = NIL;
  makeDependencyGraphWalker((Node *) cte->ctequery, cstate);
  Assert(cstate->innerwiths == NIL);
 }

 TopologicalSort(cstate->pstate, cstate->items, cstate->numitems);
}
