
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ DeallocateStmt ;


 int DropAllPreparedStatements () ;
 int DropPreparedStatement (scalar_t__,int) ;

void
DeallocateQuery(DeallocateStmt *stmt)
{
 if (stmt->name)
  DropPreparedStatement(stmt->name, 1);
 else
  DropAllPreparedStatements();
}
