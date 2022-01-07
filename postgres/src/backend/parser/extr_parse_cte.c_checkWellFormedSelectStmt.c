
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ context; } ;
struct TYPE_7__ {int op; scalar_t__ lockingClause; scalar_t__ limitCount; scalar_t__ limitOffset; scalar_t__ sortClause; scalar_t__ rarg; scalar_t__ larg; int all; } ;
typedef TYPE_1__ SelectStmt ;
typedef scalar_t__ RecursionContext ;
typedef int Node ;
typedef TYPE_2__ CteState ;


 int ERROR ;
 void* RECURSION_EXCEPT ;
 scalar_t__ RECURSION_INTERSECT ;
 scalar_t__ RECURSION_OK ;




 int checkWellFormedRecursionWalker (int *,TYPE_2__*) ;
 int elog (int ,char*,int) ;
 int raw_expression_tree_walker (int *,int (*) (int *,TYPE_2__*),void*) ;

__attribute__((used)) static void
checkWellFormedSelectStmt(SelectStmt *stmt, CteState *cstate)
{
 RecursionContext save_context = cstate->context;

 if (save_context != RECURSION_OK)
 {

  raw_expression_tree_walker((Node *) stmt,
           checkWellFormedRecursionWalker,
           (void *) cstate);
 }
 else
 {
  switch (stmt->op)
  {
   case 129:
   case 128:
    raw_expression_tree_walker((Node *) stmt,
             checkWellFormedRecursionWalker,
             (void *) cstate);
    break;
   case 130:
    if (stmt->all)
     cstate->context = RECURSION_INTERSECT;
    checkWellFormedRecursionWalker((Node *) stmt->larg,
              cstate);
    checkWellFormedRecursionWalker((Node *) stmt->rarg,
              cstate);
    cstate->context = save_context;
    checkWellFormedRecursionWalker((Node *) stmt->sortClause,
              cstate);
    checkWellFormedRecursionWalker((Node *) stmt->limitOffset,
              cstate);
    checkWellFormedRecursionWalker((Node *) stmt->limitCount,
              cstate);
    checkWellFormedRecursionWalker((Node *) stmt->lockingClause,
              cstate);

    break;
   case 131:
    if (stmt->all)
     cstate->context = RECURSION_EXCEPT;
    checkWellFormedRecursionWalker((Node *) stmt->larg,
              cstate);
    cstate->context = RECURSION_EXCEPT;
    checkWellFormedRecursionWalker((Node *) stmt->rarg,
              cstate);
    cstate->context = save_context;
    checkWellFormedRecursionWalker((Node *) stmt->sortClause,
              cstate);
    checkWellFormedRecursionWalker((Node *) stmt->limitOffset,
              cstate);
    checkWellFormedRecursionWalker((Node *) stmt->limitCount,
              cstate);
    checkWellFormedRecursionWalker((Node *) stmt->lockingClause,
              cstate);

    break;
   default:
    elog(ERROR, "unrecognized set op: %d",
      (int) stmt->op);
  }
 }
}
