
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int removeType; int concurrent; } ;
typedef TYPE_1__ DropStmt ;
 int PreventInTransactionBlock (int,char*) ;
 int RemoveObjects (TYPE_1__*) ;
 int RemoveRelations (TYPE_1__*) ;

__attribute__((used)) static void
ExecDropStmt(DropStmt *stmt, bool isTopLevel)
{
 switch (stmt->removeType)
 {
  case 132:
   if (stmt->concurrent)
    PreventInTransactionBlock(isTopLevel,
            "DROP INDEX CONCURRENTLY");


  case 129:
  case 130:
  case 128:
  case 131:
  case 133:
   RemoveRelations(stmt);
   break;
  default:
   RemoveObjects(stmt);
   break;
 }
}
