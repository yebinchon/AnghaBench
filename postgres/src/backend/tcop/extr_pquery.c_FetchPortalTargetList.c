
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ strategy; } ;
typedef TYPE_1__* Portal ;
typedef int Node ;
typedef int List ;


 int * FetchStatementTargetList (int *) ;
 int * NIL ;
 scalar_t__ PORTAL_MULTI_QUERY ;
 scalar_t__ PortalGetPrimaryStmt (TYPE_1__*) ;

List *
FetchPortalTargetList(Portal portal)
{

 if (portal->strategy == PORTAL_MULTI_QUERY)
  return NIL;

 return FetchStatementTargetList((Node *) PortalGetPrimaryStmt(portal));
}
