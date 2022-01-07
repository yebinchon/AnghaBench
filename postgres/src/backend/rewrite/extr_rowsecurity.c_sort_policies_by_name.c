
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int list_sort (int *,int ) ;
 int row_security_policy_cmp ;

__attribute__((used)) static void
sort_policies_by_name(List *policies)
{
 list_sort(policies, row_security_policy_cmp);
}
