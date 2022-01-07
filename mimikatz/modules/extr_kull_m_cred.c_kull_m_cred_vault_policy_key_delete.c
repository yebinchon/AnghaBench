
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* KeyBlob; } ;
typedef TYPE_1__* PKULL_M_CRED_VAULT_POLICY_KEY ;


 int LocalFree (TYPE_1__*) ;

void kull_m_cred_vault_policy_key_delete(PKULL_M_CRED_VAULT_POLICY_KEY key)
{
 if(key)
 {
  if(key->KeyBlob)
   LocalFree(key->KeyBlob);
  LocalFree(key);
 }
}
