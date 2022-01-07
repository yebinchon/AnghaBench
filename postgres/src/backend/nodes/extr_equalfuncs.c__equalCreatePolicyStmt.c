
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreatePolicyStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int cmd_name ;
 int permissive ;
 int policy_name ;
 int qual ;
 int roles ;
 int table ;
 int with_check ;

__attribute__((used)) static bool
_equalCreatePolicyStmt(const CreatePolicyStmt *a, const CreatePolicyStmt *b)
{
 COMPARE_STRING_FIELD(policy_name);
 COMPARE_NODE_FIELD(table);
 COMPARE_STRING_FIELD(cmd_name);
 COMPARE_SCALAR_FIELD(permissive);
 COMPARE_NODE_FIELD(roles);
 COMPARE_NODE_FIELD(qual);
 COMPARE_NODE_FIELD(with_check);

 return 1;
}
