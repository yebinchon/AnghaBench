
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GrantRoleStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int admin_opt ;
 int behavior ;
 int granted_roles ;
 int grantee_roles ;
 int grantor ;
 int is_grant ;

__attribute__((used)) static bool
_equalGrantRoleStmt(const GrantRoleStmt *a, const GrantRoleStmt *b)
{
 COMPARE_NODE_FIELD(granted_roles);
 COMPARE_NODE_FIELD(grantee_roles);
 COMPARE_SCALAR_FIELD(is_grant);
 COMPARE_SCALAR_FIELD(admin_opt);
 COMPARE_NODE_FIELD(grantor);
 COMPARE_SCALAR_FIELD(behavior);

 return 1;
}
