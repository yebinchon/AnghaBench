
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {int bv_len; int bv_val; } ;
typedef scalar_t__ PWSTR ;
typedef char* PWCHAR ;
typedef int * PLDAPMessage ;
typedef int PLDAP ;
typedef TYPE_1__* PBERVAL ;
typedef int GUID ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LDAP_SCOPE_BASE ;
 size_t LDAP_SUCCESS ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,size_t) ;
 int LocalFree (scalar_t__) ;
 int PRINT_ERROR (char*,scalar_t__) ;
 int RtlCopyMemory (int *,int ,int) ;
 int RtlZeroMemory (int *,int) ;
 int TRUE ;
 char** ldap_explode_dn (scalar_t__,int ) ;
 TYPE_1__** ldap_get_values_len (int ,int *,char*) ;
 int ldap_msgfree (int *) ;
 size_t ldap_search_s (int ,scalar_t__,int ,char*,char**,int ,int **) ;
 int ldap_value_free (char**) ;
 int ldap_value_free_len (TYPE_1__**) ;
 scalar_t__ lstrlenW (char*) ;
 int wcscat_s (scalar_t__,size_t,char*) ;
 scalar_t__ wcsncmp (scalar_t__,char*,int) ;

BOOL kuhl_m_lsadump_dcshadow_build_parentGuid_from_dn(PLDAP ld, PWSTR szObjectDN, GUID* pParentGuid)
{
 BOOL fSuccess = FALSE;
 PWSTR szParentDN;
 DWORD dwErr, len, i;
 WCHAR** szrdns;
 PWCHAR replAttr[] = {L"objectGUID", ((void*)0)};
 PBERVAL *guid;
 PLDAPMessage pMessage = ((void*)0);

 if (wcsncmp(szObjectDN, L"DC=", 3) == 0)
 {
  RtlZeroMemory(pParentGuid, sizeof(GUID));
  return TRUE;
 }

 if ((szrdns = ldap_explode_dn(szObjectDN, 0)) == ((void*)0))
 {
  PRINT_ERROR(L"Unable to parse DN (%s)\n", szObjectDN);
  return FALSE;
 }
 len = 1;
 for(i = 1; szrdns[i] != ((void*)0); i++)
 {
  len += (2 + lstrlenW(szrdns[i]));
 }
 szParentDN = (PWSTR) LocalAlloc(LPTR, len * sizeof(WCHAR));
 if (szParentDN)
 {
  for(i = 1; szrdns[i] != ((void*)0); i++)
  {
   if (i > 1)
    wcscat_s(szParentDN, len, L",");
   wcscat_s(szParentDN, len, szrdns[i]);
  }
 }
 ldap_value_free(szrdns);
 if (!szParentDN)
  return FALSE;

 dwErr = ldap_search_s(ld, szParentDN, LDAP_SCOPE_BASE, L"(objectclass=*)", replAttr, FALSE, &pMessage);
 if(dwErr == LDAP_SUCCESS)
 {
  if((guid = ldap_get_values_len(ld, pMessage, replAttr[0])) != ((void*)0) && ((*guid)->bv_len == sizeof(GUID)))
  {
   RtlCopyMemory(pParentGuid, (*guid)->bv_val, (*guid)->bv_len);
   fSuccess = TRUE;
   ldap_value_free_len(guid);
  }
  ldap_msgfree(pMessage);
 }
 else
 {
  PRINT_ERROR(L"Parent DN (%s) not found\n", szParentDN);
 }
 LocalFree(szParentDN);
 return fSuccess;
}
