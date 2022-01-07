
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ szFakeDN; scalar_t__ szFakeFQDN; int ld; int szDomainNamingContext; int szFakeDCNetBIOS; } ;
typedef char* PWSTR ;
typedef TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef int LDAPMessage ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LDAP_SCOPE_SUBTREE ;
 int PRINT_ERROR (char*,int ,int ) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_getSingleTextAttr (int ,int *,char*) ;
 int kull_m_string_copy (scalar_t__*,char*) ;
 scalar_t__ kull_m_string_sprintf (char**,char*,int ) ;
 char* ldap_get_dn (int ,int *) ;
 int ldap_memfree (char*) ;
 int ldap_msgfree (int *) ;
 int ldap_search_s (int ,int ,int ,char*,char**,int ,int **) ;

BOOL kuhl_m_lsadump_dcshadow_domaininfo_computer(PDCSHADOW_DOMAIN_INFO info)
{
 DWORD dwErr;
 PWSTR szComputerFilter, szTempComputerDN;
 PWSTR szComputerAttributes[] = {L"distinguishedName",L"userAccountControl", L"dNSHostName", ((void*)0)};
 LDAPMessage *pComputerSearchResult = ((void*)0);

 if(kull_m_string_sprintf(&szComputerFilter, L"(&(|(objectClass=user)(objectClass=computer))(sAMAccountName=%s$))", info->szFakeDCNetBIOS))
 {

  if(!(dwErr = ldap_search_s(info->ld, info->szDomainNamingContext, LDAP_SCOPE_SUBTREE, szComputerFilter, szComputerAttributes, FALSE, &pComputerSearchResult)))
  {
   szTempComputerDN = ldap_get_dn(info->ld,pComputerSearchResult);
   kull_m_string_copy(&info->szFakeDN, szTempComputerDN);
   ldap_memfree(szTempComputerDN);
   info->szFakeFQDN = kuhl_m_lsadump_dcshadow_getSingleTextAttr(info->ld, pComputerSearchResult, L"dNSHostName");
   ldap_msgfree(pComputerSearchResult);
  }
  else PRINT_ERROR(L"computer not found in AD 0x%x (%u)\n", dwErr, dwErr);
 }
 return info->szFakeFQDN && info->szFakeDN;
}
