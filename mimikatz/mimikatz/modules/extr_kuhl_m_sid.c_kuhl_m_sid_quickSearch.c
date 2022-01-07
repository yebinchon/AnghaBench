
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef char* PWCHAR ;
typedef int * PLDAPMessage ;
typedef int PLDAP ;
typedef int PCWCHAR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LDAP_SCOPE_SUBTREE ;
 scalar_t__ LDAP_SUCCESS ;
 int LocalFree (char*) ;
 int PRINT_ERROR (char*,scalar_t__,...) ;
 int kuhl_m_sid_displayMessage (int ,int *) ;
 char* kuhl_m_sid_filterFromArgs (int,int **) ;
 scalar_t__ kull_m_ldap_getLdapAndRootDN (int ,int *,int *,char**) ;
 int ldap_count_entries (int ,int *) ;
 int ldap_msgfree (int *) ;
 scalar_t__ ldap_search_s (int ,char*,int ,char*,char**,int,int **) ;
 int ldap_unbind (int ) ;

BOOL kuhl_m_sid_quickSearch(int argc, wchar_t * argv[], BOOL needUnique, PCWCHAR system, PLDAP *ld, PLDAPMessage *pMessage)
{
 BOOL status = FALSE;
 DWORD dwErr;
 PWCHAR myAttrs[] = {L"name", L"sAMAccountName", L"objectSid", L"sIDHistory", L"objectGUID", ((void*)0)}, dn, filter;
 if(filter = kuhl_m_sid_filterFromArgs(argc, argv))
 {
  if(kull_m_ldap_getLdapAndRootDN(system, ((void*)0), ld, &dn))
  {
   *pMessage = ((void*)0);
   dwErr = ldap_search_s(*ld, dn, LDAP_SCOPE_SUBTREE, filter, myAttrs, FALSE, pMessage);
   if(status = (dwErr == LDAP_SUCCESS))
   {
    switch(ldap_count_entries(*ld, *pMessage))
    {
    case 0:
     status = FALSE;
     PRINT_ERROR(L"No result! - filter was \'%s\'\n", filter);
     break;
    case 1:
     break;
    default:
     if(needUnique)
     {
      PRINT_ERROR(L"Not unique - Please: don\'t brick your AD! - filter was \'%s\'\n", filter);
      status = FALSE;
     }
     break;
    }
   }
   else PRINT_ERROR(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);

   if(status)
    kuhl_m_sid_displayMessage(*ld, *pMessage);
   else
   {
    if(*pMessage)
     ldap_msgfree(*pMessage);
    ldap_unbind(*ld);
   }
   LocalFree(dn);
  }
  LocalFree(filter);
 }
 return status;
}
