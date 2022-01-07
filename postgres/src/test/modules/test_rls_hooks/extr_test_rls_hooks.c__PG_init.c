
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prev_row_security_policy_hook_permissive ;
 int prev_row_security_policy_hook_restrictive ;
 int row_security_policy_hook_permissive ;
 int row_security_policy_hook_restrictive ;
 int test_rls_hooks_permissive ;
 int test_rls_hooks_restrictive ;

void
_PG_init(void)
{

 prev_row_security_policy_hook_permissive = row_security_policy_hook_permissive;
 prev_row_security_policy_hook_restrictive = row_security_policy_hook_restrictive;


 row_security_policy_hook_permissive = test_rls_hooks_permissive;
 row_security_policy_hook_restrictive = test_rls_hooks_restrictive;
}
