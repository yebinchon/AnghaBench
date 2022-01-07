
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char** modv_strvals; } ;
struct TYPE_8__ {char* mod_type; TYPE_1__ mod_vals; int mod_op; int member_0; } ;
struct TYPE_7__ {int szFakeDN; int ld; int szDomainName; int szFakeFQDN; int szConfigurationNamingContext; } ;
typedef char* PWSTR ;
typedef TYPE_2__* PDCSHADOW_DOMAIN_INFO ;
typedef int NTSTATUS ;
typedef TYPE_3__ LDAPMod ;
typedef int LDAPMessage ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int LDAP_MOD_DELETE ;
 int LDAP_SCOPE_ONELEVEL ;
 int LDAP_SCOPE_SUBTREE ;
 scalar_t__ LDAP_SUCCESS ;
 int LocalFree (char*) ;
 int PRINT_ERROR (char*,...) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 scalar_t__ TRUE ;
 scalar_t__ kull_m_string_sprintf (char**,char*,int ,...) ;
 int ldap_count_entries (int ,int *) ;
 scalar_t__ ldap_delete_s (int ,char*) ;
 char* ldap_get_dnW (int ,int *) ;
 int ldap_memfreeW (char*) ;
 scalar_t__ ldap_modify_s (int ,int ,TYPE_3__**) ;
 int ldap_msgfree (int *) ;
 scalar_t__ ldap_search_sW (int ,char*,int ,char*,int *,scalar_t__,int **) ;

NTSTATUS kuhl_m_lsadump_dcshadow_unregister(PDCSHADOW_DOMAIN_INFO info)
{
 BOOL fSuccess = FALSE;
 DWORD dwErr = 0;
 PWSTR sitesBase, sitesFilter, serverBase, NTDSBase;
 LDAPMessage* pSitesMessage, * pServerMessage;
 PWSTR szSPNAttribute[] = {((void*)0), ((void*)0)};
 LDAPMod ldapmodSPN = {0};
 LDAPMod *ldapmodServer[] = {&ldapmodSPN, ((void*)0)};

 if(kull_m_string_sprintf(&sitesBase, L"CN=Sites,%s", info->szConfigurationNamingContext))
 {
  if(kull_m_string_sprintf(&sitesFilter, L"(&(objectClass=server)(dNSHostName=%s))", info->szFakeFQDN))
  {
   dwErr = ldap_search_sW(info->ld, sitesBase, LDAP_SCOPE_SUBTREE, sitesFilter, ((void*)0), FALSE, &pSitesMessage);
   if(dwErr == LDAP_SUCCESS)
   {
    if(ldap_count_entries(info->ld, pSitesMessage) == 1)
    {
     if(serverBase = ldap_get_dnW(info->ld, pSitesMessage))
     {
      dwErr = ldap_search_sW(info->ld, serverBase, LDAP_SCOPE_ONELEVEL, L"(name=NTDS Settings)", ((void*)0), FALSE, &pServerMessage);
      if(dwErr == LDAP_SUCCESS)
      {
       if(NTDSBase = ldap_get_dnW(info->ld, pServerMessage))
       {
        if((dwErr = ldap_delete_s(info->ld, NTDSBase)) != LDAP_SUCCESS)
         PRINT_ERROR(L"ldap_delete_s %s 0x%x (%u)\n", NTDSBase, dwErr, dwErr);
        else fSuccess = TRUE;
        ldap_memfreeW(NTDSBase);
       }
       ldap_msgfree(pServerMessage);
      }
      else PRINT_ERROR(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);
      if((dwErr = ldap_delete_s(info->ld, serverBase)) != LDAP_SUCCESS)
       PRINT_ERROR(L"ldap_delete_s %s 0x%x (%u)\n", serverBase, dwErr, dwErr);
      ldap_memfreeW(serverBase);
     }
    }
    else PRINT_ERROR(L"ldap_count_entries is NOT 1\n");
    ldap_msgfree(pSitesMessage);
   }
   else PRINT_ERROR(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);
   LocalFree(sitesFilter);
  }
  LocalFree(sitesBase);
 }

 ldapmodSPN.mod_op = LDAP_MOD_DELETE;
 ldapmodSPN.mod_type = L"servicePrincipalName";
 ldapmodSPN.mod_vals.modv_strvals = szSPNAttribute;
 if(kull_m_string_sprintf(szSPNAttribute, L"GC/%s/%s", info->szFakeFQDN, info->szDomainName))
 {
  if((dwErr = ldap_modify_s(info->ld, info->szFakeDN, ldapmodServer)) != 0)
   PRINT_ERROR(L"ldap_modify_s computer SPN 0x%x (%u)\n", dwErr, dwErr);
 }
 return (fSuccess?STATUS_SUCCESS: STATUS_UNSUCCESSFUL);
}
