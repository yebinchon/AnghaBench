
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; int is_complete; int query_list; int * resultDesc; } ;
typedef int QueryEnvironment ;
typedef int Query ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ CachedPlanSource ;


 int Assert (int) ;
 scalar_t__ CACHEDPLANSOURCE_MAGIC ;
 int * FetchStatementTargetList (int *) ;
 int * NIL ;
 int * QueryListGetPrimaryStmt (int ) ;
 int RevalidateCachedQuery (TYPE_1__*,int *) ;

List *
CachedPlanGetTargetList(CachedPlanSource *plansource,
      QueryEnvironment *queryEnv)
{
 Query *pstmt;


 Assert(plansource->magic == CACHEDPLANSOURCE_MAGIC);
 Assert(plansource->is_complete);





 if (plansource->resultDesc == ((void*)0))
  return NIL;


 RevalidateCachedQuery(plansource, queryEnv);


 pstmt = QueryListGetPrimaryStmt(plansource->query_list);

 return FetchStatementTargetList((Node *) pstmt);
}
