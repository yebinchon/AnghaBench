
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int szObjectDN; } ;
typedef int PWSTR ;
typedef int * PLDAPMessage ;
typedef int PLDAP ;
typedef TYPE_1__* PDCSHADOW_PUSH_REQUEST_OBJECT ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LDAP_SCOPE_SUBTREE ;
 scalar_t__ LDAP_SUCCESS ;
 int LocalFree (int ) ;
 int TRUE ;
 scalar_t__ kull_m_string_copy (int *,int ) ;
 scalar_t__ kull_m_string_sprintf (int *,char*,int ) ;
 int ldap_get_dnW (int ,int *) ;
 int ldap_msgfree (int *) ;
 scalar_t__ ldap_search_s (int ,int ,int ,int ,int *,int ,int **) ;

BOOL kuhl_m_lsadump_dcshadow_build_convert_account_to_dn(PLDAP ld, PWSTR szDomainNamingContext, PDCSHADOW_PUSH_REQUEST_OBJECT object)
{
 BOOL status = FALSE;
 DWORD dwErr;
 PLDAPMessage pMessage = ((void*)0);
 PWSTR szFilter, szDN;

 if(kull_m_string_sprintf(&szFilter, L"(sAMAccountName=%s)", object->szObjectDN))
 {
  dwErr = ldap_search_s(ld, szDomainNamingContext, LDAP_SCOPE_SUBTREE, szFilter, ((void*)0), FALSE, &pMessage);
  if(dwErr == LDAP_SUCCESS)
  {
   if(szDN = ldap_get_dnW(ld, pMessage))
   {
    LocalFree(object->szObjectDN);
    if(kull_m_string_copy(&object->szObjectDN, szDN))
     status = TRUE;
   }
   ldap_msgfree(pMessage);
  }
  LocalFree(szFilter);
 }
 return status;
}
