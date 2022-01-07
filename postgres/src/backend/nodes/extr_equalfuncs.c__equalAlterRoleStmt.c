
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterRoleStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int action ;
 int options ;
 int role ;

__attribute__((used)) static bool
_equalAlterRoleStmt(const AlterRoleStmt *a, const AlterRoleStmt *b)
{
 COMPARE_NODE_FIELD(role);
 COMPARE_NODE_FIELD(options);
 COMPARE_SCALAR_FIELD(action);

 return 1;
}
