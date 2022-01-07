
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int root ;
typedef int glob ;
struct TYPE_5__ {int dependsOnRole; int * invalItems; int * relationOids; struct TYPE_5__* glob; int type; } ;
typedef TYPE_1__ PlannerInfo ;
typedef TYPE_1__ PlannerGlobal ;
typedef int Node ;
typedef int List ;


 int MemSet (TYPE_1__*,int ,int) ;
 void* NIL ;
 int T_PlannerGlobal ;
 int T_PlannerInfo ;
 int extract_query_dependencies_walker (int *,TYPE_1__*) ;

void
extract_query_dependencies(Node *query,
         List **relationOids,
         List **invalItems,
         bool *hasRowSecurity)
{
 PlannerGlobal glob;
 PlannerInfo root;


 MemSet(&glob, 0, sizeof(glob));
 glob.type = T_PlannerGlobal;
 glob.relationOids = NIL;
 glob.invalItems = NIL;

 glob.dependsOnRole = 0;

 MemSet(&root, 0, sizeof(root));
 root.type = T_PlannerInfo;
 root.glob = &glob;

 (void) extract_query_dependencies_walker(query, &root);

 *relationOids = glob.relationOids;
 *invalItems = glob.invalItems;
 *hasRowSecurity = glob.dependsOnRole;
}
