
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_17__ {TYPE_2__* funcexpr; } ;
struct TYPE_16__ {int name; } ;
struct TYPE_15__ {int portalname; int ismove; } ;
struct TYPE_14__ {int tupDesc; } ;
struct TYPE_13__ {TYPE_1__* plansource; } ;
struct TYPE_12__ {int funcresulttype; } ;
struct TYPE_11__ {int resultDesc; } ;
typedef TYPE_3__ PreparedStatement ;
typedef TYPE_4__* Portal ;
typedef int Node ;
typedef TYPE_5__ FetchStmt ;
typedef TYPE_6__ ExecuteStmt ;
typedef TYPE_7__ CallStmt ;


 TYPE_3__* FetchPreparedStatement (int ,int) ;
 TYPE_4__* GetPortalByName (int ) ;
 int PortalIsValid (TYPE_4__*) ;
 int RECORDOID ;





 int nodeTag (int *) ;

bool
UtilityReturnsTuples(Node *parsetree)
{
 switch (nodeTag(parsetree))
 {
  case 132:
   {
    CallStmt *stmt = (CallStmt *) parsetree;

    return (stmt->funcexpr->funcresulttype == RECORDOID);
   }
  case 129:
   {
    FetchStmt *stmt = (FetchStmt *) parsetree;
    Portal portal;

    if (stmt->ismove)
     return 0;
    portal = GetPortalByName(stmt->portalname);
    if (!PortalIsValid(portal))
     return 0;
    return portal->tupDesc ? 1 : 0;
   }

  case 131:
   {
    ExecuteStmt *stmt = (ExecuteStmt *) parsetree;
    PreparedStatement *entry;

    entry = FetchPreparedStatement(stmt->name, 0);
    if (!entry)
     return 0;
    if (entry->plansource->resultDesc)
     return 1;
    return 0;
   }

  case 130:
   return 1;

  case 128:
   return 1;

  default:
   return 0;
 }
}
