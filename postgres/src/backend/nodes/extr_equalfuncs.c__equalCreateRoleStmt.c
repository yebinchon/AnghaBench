
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateRoleStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int options ;
 int role ;
 int stmt_type ;

__attribute__((used)) static bool
_equalCreateRoleStmt(const CreateRoleStmt *a, const CreateRoleStmt *b)
{
 COMPARE_SCALAR_FIELD(stmt_type);
 COMPARE_STRING_FIELD(role);
 COMPARE_NODE_FIELD(options);

 return 1;
}
