
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valLen; scalar_t__ pVal; } ;
typedef scalar_t__ PWSTR ;
typedef scalar_t__ PUSER_PROPERTIES ;
typedef scalar_t__ PKERB_STORED_CREDENTIAL_NEW ;
typedef scalar_t__ PBYTE ;
typedef int DWORD ;
typedef int BOOL ;
typedef TYPE_1__ ATTRVAL ;


 int FALSE ;
 int LocalFree (scalar_t__) ;
 scalar_t__ MIDL_user_allocate (int ) ;
 int RtlCopyMemory (scalar_t__,scalar_t__,int ) ;
 int TRUE ;
 int kprintf (char*) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_KerbStoredCredentialNew (scalar_t__,scalar_t__,scalar_t__,int,scalar_t__*,int *) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_UserProperties (scalar_t__*,int *,int,char*,scalar_t__,int ) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_valueFromArgs (scalar_t__,int,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int kuhl_m_lsadump_dcsync_descrUserProperties (scalar_t__) ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials(ATTRVAL* pVal, PWSTR szValue)
{
 BOOL status = FALSE;
 PWSTR salt;
 PBYTE aes256, aes128;
 PKERB_STORED_CREDENTIAL_NEW kerbCredentials;
 DWORD dwKerbCredentials;
 PUSER_PROPERTIES properties;
 DWORD dwProperties;

 kprintf(L"\n== Encoder helper for supplementalCredentials ==\n\n");
 if(kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_valueFromArgs(szValue, 4096, &salt, &aes256, &aes128))
 {
  if(kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_KerbStoredCredentialNew(salt, aes256, aes128, 4096, &kerbCredentials, &dwKerbCredentials))
  {
   if(kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_UserProperties(&properties, &dwProperties, 1, L"Primary:Kerberos-Newer-Keys", kerbCredentials, dwKerbCredentials))
   {
    kuhl_m_lsadump_dcsync_descrUserProperties(properties);
    if(pVal->pVal = (PBYTE) MIDL_user_allocate(dwProperties))
    {
     pVal->valLen = dwProperties;
     RtlCopyMemory(pVal->pVal, properties, pVal->valLen);
     status = TRUE;
    }
    LocalFree(properties);
   }
   LocalFree(kerbCredentials);
  }
  if(salt)
   LocalFree(salt);
  if(aes256)
   LocalFree(aes256);
  if(aes128)
   LocalFree(aes128);
 }
 return status;
}
