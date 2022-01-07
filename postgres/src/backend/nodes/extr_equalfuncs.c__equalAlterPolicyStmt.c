
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterPolicyStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int policy_name ;
 int qual ;
 int roles ;
 int table ;
 int with_check ;

__attribute__((used)) static bool
_equalAlterPolicyStmt(const AlterPolicyStmt *a, const AlterPolicyStmt *b)
{
 COMPARE_STRING_FIELD(policy_name);
 COMPARE_NODE_FIELD(table);
 COMPARE_NODE_FIELD(roles);
 COMPARE_NODE_FIELD(qual);
 COMPARE_NODE_FIELD(with_check);

 return 1;
}
