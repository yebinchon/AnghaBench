
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int root ;
typedef int glob ;
struct TYPE_6__ {int * invalItems; int * relationOids; struct TYPE_6__* glob; int type; } ;
typedef TYPE_1__ PlannerInfo ;
typedef TYPE_1__ PlannerGlobal ;
typedef int Node ;
typedef int List ;
typedef int Expr ;


 int MemSet (TYPE_1__*,int ,int) ;
 void* NIL ;
 int T_PlannerGlobal ;
 int T_PlannerInfo ;
 int * eval_const_expressions (TYPE_1__*,int *) ;
 int extract_query_dependencies_walker (int *,TYPE_1__*) ;
 int fix_opfuncids (int *) ;

Expr *
expression_planner_with_deps(Expr *expr,
        List **relationOids,
        List **invalItems)
{
 Node *result;
 PlannerGlobal glob;
 PlannerInfo root;


 MemSet(&glob, 0, sizeof(glob));
 glob.type = T_PlannerGlobal;
 glob.relationOids = NIL;
 glob.invalItems = NIL;

 MemSet(&root, 0, sizeof(root));
 root.type = T_PlannerInfo;
 root.glob = &glob;






 result = eval_const_expressions(&root, (Node *) expr);


 fix_opfuncids(result);





 (void) extract_query_dependencies_walker(result, &root);

 *relationOids = glob.relationOids;
 *invalItems = glob.invalItems;

 return (Expr *) result;
}
