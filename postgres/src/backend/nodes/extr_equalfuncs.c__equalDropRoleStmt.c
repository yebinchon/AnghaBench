
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DropRoleStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int missing_ok ;
 int roles ;

__attribute__((used)) static bool
_equalDropRoleStmt(const DropRoleStmt *a, const DropRoleStmt *b)
{
 COMPARE_NODE_FIELD(roles);
 COMPARE_SCALAR_FIELD(missing_ok);

 return 1;
}
