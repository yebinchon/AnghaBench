
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t __count; struct TYPE_5__* Credentials; } ;
typedef TYPE_1__* PKULL_M_CRED_LEGACY_CREDS_BLOB ;
typedef size_t DWORD ;


 int LocalFree (TYPE_1__*) ;
 int kull_m_cred_legacy_cred_delete (TYPE_1__) ;

void kull_m_cred_legacy_creds_delete(PKULL_M_CRED_LEGACY_CREDS_BLOB creds)
{
 DWORD i;
 if(creds)
 {
  if(creds->Credentials)
  {
   for(i = 0; i < creds->__count; i++)
    kull_m_cred_legacy_cred_delete(creds->Credentials[i]);
   LocalFree(creds->Credentials);
  }
  LocalFree(creds);
 }
}
