
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterTableMoveAllStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int new_tablespacename ;
 int nowait ;
 int objtype ;
 int orig_tablespacename ;
 int roles ;

__attribute__((used)) static bool
_equalAlterTableMoveAllStmt(const AlterTableMoveAllStmt *a,
       const AlterTableMoveAllStmt *b)
{
 COMPARE_STRING_FIELD(orig_tablespacename);
 COMPARE_SCALAR_FIELD(objtype);
 COMPARE_NODE_FIELD(roles);
 COMPARE_STRING_FIELD(new_tablespacename);
 COMPARE_SCALAR_FIELD(nowait);

 return 1;
}
