
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ key; struct TYPE_4__* Name; } ;
typedef TYPE_1__* PKULL_M_CRED_VAULT_POLICY ;


 int LocalFree (TYPE_1__*) ;
 int kull_m_cred_vault_policy_key_delete (scalar_t__) ;

void kull_m_cred_vault_policy_delete(PKULL_M_CRED_VAULT_POLICY policy)
{
 if(policy)
 {
  if(policy->Name)
   LocalFree(policy->Name);
  if(policy->key)
   kull_m_cred_vault_policy_key_delete(policy->key);
  LocalFree(policy);
 }
}
