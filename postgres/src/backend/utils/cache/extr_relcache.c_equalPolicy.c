
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ polcmd; scalar_t__ hassublinks; int with_check_qual; int qual; int roles; int policy_name; } ;
typedef TYPE_1__ RowSecurityPolicy ;
typedef scalar_t__ Oid ;


 scalar_t__ ARR_DATA_PTR (int ) ;
 int* ARR_DIMS (int ) ;
 int equal (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool
equalPolicy(RowSecurityPolicy *policy1, RowSecurityPolicy *policy2)
{
 int i;
 Oid *r1,
      *r2;

 if (policy1 != ((void*)0))
 {
  if (policy2 == ((void*)0))
   return 0;

  if (policy1->polcmd != policy2->polcmd)
   return 0;
  if (policy1->hassublinks != policy2->hassublinks)
   return 0;
  if (strcmp(policy1->policy_name, policy2->policy_name) != 0)
   return 0;
  if (ARR_DIMS(policy1->roles)[0] != ARR_DIMS(policy2->roles)[0])
   return 0;

  r1 = (Oid *) ARR_DATA_PTR(policy1->roles);
  r2 = (Oid *) ARR_DATA_PTR(policy2->roles);

  for (i = 0; i < ARR_DIMS(policy1->roles)[0]; i++)
  {
   if (r1[i] != r2[i])
    return 0;
  }

  if (!equal(policy1->qual, policy2->qual))
   return 0;
  if (!equal(policy1->with_check_qual, policy2->with_check_qual))
   return 0;
 }
 else if (policy2 != ((void*)0))
  return 0;

 return 1;
}
