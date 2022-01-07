
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterFunctionStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int actions ;
 int func ;
 int objtype ;

__attribute__((used)) static bool
_equalAlterFunctionStmt(const AlterFunctionStmt *a, const AlterFunctionStmt *b)
{
 COMPARE_SCALAR_FIELD(objtype);
 COMPARE_NODE_FIELD(func);
 COMPARE_NODE_FIELD(actions);

 return 1;
}
