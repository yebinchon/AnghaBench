
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int ArrayType ;


 scalar_t__ ACL_ID_PUBLIC ;
 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ has_privs_of_role (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
check_role_for_policy(ArrayType *policy_roles, Oid user_id)
{
 int i;
 Oid *roles = (Oid *) ARR_DATA_PTR(policy_roles);


 if (roles[0] == ACL_ID_PUBLIC)
  return 1;

 for (i = 0; i < ARR_DIMS(policy_roles)[0]; i++)
 {
  if (has_privs_of_role(user_id, roles[i]))
   return 1;
 }

 return 0;
}
