
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
typedef TYPE_1__ VariableShowStmt ;
typedef int * TupleDesc ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int portalname; int ismove; } ;
struct TYPE_8__ {int tupDesc; } ;
typedef int PreparedStatement ;
typedef TYPE_2__* Portal ;
typedef int Node ;
typedef TYPE_3__ FetchStmt ;
typedef int ExplainStmt ;
typedef TYPE_4__ ExecuteStmt ;
typedef int CallStmt ;


 int * CallStmtResultDesc (int *) ;
 int * CreateTupleDescCopy (int ) ;
 int * ExplainResultDesc (int *) ;
 int * FetchPreparedStatement (int ,int) ;
 int * FetchPreparedStatementResultDesc (int *) ;
 int * GetPGVariableResultDesc (int ) ;
 TYPE_2__* GetPortalByName (int ) ;
 int PortalIsValid (TYPE_2__*) ;





 int nodeTag (int *) ;

TupleDesc
UtilityTupleDescriptor(Node *parsetree)
{
 switch (nodeTag(parsetree))
 {
  case 132:
   return CallStmtResultDesc((CallStmt *) parsetree);

  case 129:
   {
    FetchStmt *stmt = (FetchStmt *) parsetree;
    Portal portal;

    if (stmt->ismove)
     return ((void*)0);
    portal = GetPortalByName(stmt->portalname);
    if (!PortalIsValid(portal))
     return ((void*)0);
    return CreateTupleDescCopy(portal->tupDesc);
   }

  case 131:
   {
    ExecuteStmt *stmt = (ExecuteStmt *) parsetree;
    PreparedStatement *entry;

    entry = FetchPreparedStatement(stmt->name, 0);
    if (!entry)
     return ((void*)0);
    return FetchPreparedStatementResultDesc(entry);
   }

  case 130:
   return ExplainResultDesc((ExplainStmt *) parsetree);

  case 128:
   {
    VariableShowStmt *n = (VariableShowStmt *) parsetree;

    return GetPGVariableResultDesc(n->name);
   }

  default:
   return ((void*)0);
 }
}
