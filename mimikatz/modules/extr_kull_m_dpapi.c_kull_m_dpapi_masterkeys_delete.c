
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ DomainKey; scalar_t__ CredHist; scalar_t__ BackupKey; scalar_t__ MasterKey; } ;
typedef TYPE_1__* PKULL_M_DPAPI_MASTERKEYS ;


 int LocalFree (TYPE_1__*) ;
 int kull_m_dpapi_masterkey_delete (scalar_t__) ;
 int kull_m_dpapi_masterkeys_credhist_delete (scalar_t__) ;
 int kull_m_dpapi_masterkeys_domainkey_delete (scalar_t__) ;

void kull_m_dpapi_masterkeys_delete(PKULL_M_DPAPI_MASTERKEYS masterkeys)
{
 if(masterkeys)
 {
  if(masterkeys->MasterKey)
   kull_m_dpapi_masterkey_delete(masterkeys->MasterKey);
  if(masterkeys->BackupKey)
   kull_m_dpapi_masterkey_delete(masterkeys->BackupKey);
  if(masterkeys->CredHist)
   kull_m_dpapi_masterkeys_credhist_delete(masterkeys->CredHist);
  if(masterkeys->DomainKey)
   kull_m_dpapi_masterkeys_domainkey_delete(masterkeys->DomainKey);
  LocalFree(masterkeys);
 }
}
