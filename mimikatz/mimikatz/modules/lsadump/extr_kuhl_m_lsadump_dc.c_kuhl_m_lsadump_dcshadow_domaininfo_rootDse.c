
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* szDCDsServiceName; size_t dwDomainControllerFunctionality; void* szDsServiceName; void* szSchemaNamingContext; void* szConfigurationNamingContext; void* szDomainNamingContext; void* maxDCUsn; int ld; } ;
typedef char* PWCHAR ;
typedef int * PLDAPMessage ;
typedef TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 size_t ARRAYSIZE (char**) ;
 int FALSE ;
 int LDAP_SCOPE_BASE ;
 scalar_t__ LDAP_SUCCESS ;
 int LocalFree (char*) ;
 int PRINT_ERROR (char*,...) ;
 char** SZ_DOMAIN_CONTROLLER_FUNCTIONALITY ;
 int kprintf (char*,size_t,...) ;
 void* kuhl_m_lsadump_dcshadow_getSingleTextAttr (int ,int *,char*) ;
 scalar_t__ kull_m_string_copy (void**,char*) ;
 int ldap_count_entries (int ,int *) ;
 int ldap_msgfree (int *) ;
 scalar_t__ ldap_search_s (int ,int *,int ,int *,char**,int ,int **) ;
 char* wcsstr (char*,char*) ;
 void* wcstoul (char*,int *,int) ;

BOOL kuhl_m_lsadump_dcshadow_domaininfo_rootDse(PDCSHADOW_DOMAIN_INFO info)
{
 DWORD dwErr;
 PWCHAR rootAttr[] = {L"rootDomainNamingContext", L"configurationNamingContext", L"schemaNamingContext", L"dsServiceName", L"domainControllerFunctionality", L"highestCommittedUSN", ((void*)0)};
 PLDAPMessage pMessage = ((void*)0);
 PWCHAR tmp, p;

 dwErr = ldap_search_s(info->ld, ((void*)0), LDAP_SCOPE_BASE, ((void*)0), rootAttr, FALSE, &pMessage);
 if(dwErr == LDAP_SUCCESS)
 {
  if(ldap_count_entries(info->ld, pMessage) == 1)
  {
   if(info->szDomainNamingContext = kuhl_m_lsadump_dcshadow_getSingleTextAttr(info->ld, pMessage, rootAttr[0]))
    kprintf(L"Domain:         %s\n", info->szDomainNamingContext);
   if(info->szConfigurationNamingContext = kuhl_m_lsadump_dcshadow_getSingleTextAttr(info->ld, pMessage, rootAttr[1]))
    kprintf(L"Configuration:  %s\n", info->szConfigurationNamingContext);
   if(info->szSchemaNamingContext = kuhl_m_lsadump_dcshadow_getSingleTextAttr(info->ld, pMessage, rootAttr[2]))
    kprintf(L"Schema:         %s\n", info->szSchemaNamingContext);
   if(info->szDCDsServiceName = kuhl_m_lsadump_dcshadow_getSingleTextAttr(info->ld, pMessage, rootAttr[3]))
   {
    p = wcsstr(info->szDCDsServiceName, L",CN=");
    if(p)
    {
     p = wcsstr(p + 1, L",CN=");
     if(p && (p + 1) && kull_m_string_copy(&info->szDsServiceName, p));
      kprintf(L"dsServiceName:  %s\n", info->szDsServiceName);
    }
   }
   if(tmp = kuhl_m_lsadump_dcshadow_getSingleTextAttr(info->ld, pMessage, rootAttr[4]))
   {
    info->dwDomainControllerFunctionality = wcstoul(tmp, ((void*)0), 10);
    LocalFree(tmp);
   }
   kprintf(L"domainControllerFunctionality: %u ( %s )\n", info->dwDomainControllerFunctionality, (info->dwDomainControllerFunctionality < ARRAYSIZE(SZ_DOMAIN_CONTROLLER_FUNCTIONALITY) ? SZ_DOMAIN_CONTROLLER_FUNCTIONALITY[info->dwDomainControllerFunctionality] : L"?"));
   if(tmp = kuhl_m_lsadump_dcshadow_getSingleTextAttr(info->ld, pMessage, rootAttr[5]))
   {
    info->maxDCUsn = wcstoul(tmp, ((void*)0), 10);
    LocalFree(tmp);
   }
   kprintf(L"highestCommittedUSN: %u\n", info->maxDCUsn);
  }
  else PRINT_ERROR(L"ldap_count_entries is NOT 1\n");
  ldap_msgfree(pMessage);
 }
 else PRINT_ERROR(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);
 return (dwErr == LDAP_SUCCESS) && info->szDomainNamingContext && info->szConfigurationNamingContext && info->szSchemaNamingContext && info->szDsServiceName;
}
