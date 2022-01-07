
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inline_cte_walker_context {int levelsup; scalar_t__ refcount; int ctequery; int ctename; } ;
struct TYPE_6__ {scalar_t__ cterefcount; int ctequery; int ctename; } ;
struct TYPE_5__ {scalar_t__ parse; } ;
typedef TYPE_1__ PlannerInfo ;
typedef int Node ;
typedef TYPE_2__ CommonTableExpr ;


 int Assert (int) ;
 int Query ;
 int castNode (int ,int ) ;
 int inline_cte_walker (int *,struct inline_cte_walker_context*) ;

__attribute__((used)) static void
inline_cte(PlannerInfo *root, CommonTableExpr *cte)
{
 struct inline_cte_walker_context context;

 context.ctename = cte->ctename;

 context.levelsup = -1;
 context.refcount = cte->cterefcount;
 context.ctequery = castNode(Query, cte->ctequery);

 (void) inline_cte_walker((Node *) root->parse, &context);


 Assert(context.refcount == 0);
}
