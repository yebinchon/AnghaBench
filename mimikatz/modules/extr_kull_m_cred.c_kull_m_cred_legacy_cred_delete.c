
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int AttributeCount; scalar_t__ Attributes; struct TYPE_4__* CredentialBlob; struct TYPE_4__* UserName; struct TYPE_4__* TargetAlias; struct TYPE_4__* Comment; struct TYPE_4__* TargetName; } ;
typedef TYPE_1__* PKULL_M_CRED_LEGACY_CRED_BLOB ;


 int LocalFree (TYPE_1__*) ;
 int kull_m_cred_attributes_delete (scalar_t__,int ) ;

void kull_m_cred_legacy_cred_delete(PKULL_M_CRED_LEGACY_CRED_BLOB cred)
{
 if(cred)
 {
  if(cred->TargetName)
   LocalFree(cred->TargetName);
  if(cred->Comment)
   LocalFree(cred->Comment);
  if(cred->TargetAlias)
   LocalFree(cred->TargetAlias);
  if(cred->UserName)
   LocalFree(cred->UserName);
  if(cred->CredentialBlob)
   LocalFree(cred->CredentialBlob);
  if(cred->Attributes)
   kull_m_cred_attributes_delete(cred->Attributes, cred->AttributeCount);
  LocalFree(cred);
 }
}
