
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ld; int szSchemaNamingContext; } ;
struct TYPE_6__ {size_t valCount; } ;
struct TYPE_7__ {char** pszValue; TYPE_1__ AttrVal; } ;
typedef char* PWSTR ;
typedef TYPE_2__* PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE ;
typedef TYPE_3__* PDCSHADOW_DOMAIN_INFO ;
typedef int LDAPMessage ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LDAP_SCOPE_ONELEVEL ;
 int LocalFree (char*) ;
 int PRINT_ERROR (char*,...) ;
 int TRUE ;
 char* kuhl_m_lsadump_dcshadow_getSingleTextAttr (int ,int *,char*) ;
 scalar_t__ kull_m_string_sprintf (char**,char*,char*) ;
 int ldap_count_entries (int ,int *) ;
 int ldap_msgfree (int *) ;
 size_t ldap_search_s (int ,int ,int ,char*,char**,int ,int **) ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_get_schema_oid_values(PDCSHADOW_DOMAIN_INFO info, PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE attr)
{
 BOOL fSuccess = FALSE;
 DWORD i, dwErr;
 PWSTR szFilter, szTempValue, szAttributes[] = {L"governsID", ((void*)0)};
 LDAPMessage *pSearchResult = ((void*)0);

 for(i = 0; i< attr->AttrVal.valCount; i++)
 {
  fSuccess = FALSE;
  if(kull_m_string_sprintf(&szFilter, L"(&(objectClass=classSchema)(lDAPDisplayName=%s))", attr->pszValue[i]))
  {
   if(!(dwErr = ldap_search_s(info->ld, info->szSchemaNamingContext, LDAP_SCOPE_ONELEVEL, szFilter, szAttributes, FALSE, &pSearchResult)))
   {
    if(ldap_count_entries(info->ld, pSearchResult) == 1)
    {
     szTempValue = kuhl_m_lsadump_dcshadow_getSingleTextAttr(info->ld, pSearchResult, szAttributes[0]);
     if(szTempValue)
     {
      LocalFree(attr->pszValue[i]);
      attr->pszValue[i] = szTempValue;
      fSuccess = TRUE;
     }
    }
    else PRINT_ERROR(L"objectClass %s not found in AD\n", attr->pszValue[i]);
    ldap_msgfree(pSearchResult);
   }
   else PRINT_ERROR(L"objectClass not found in AD 0x%x (%u)\n", dwErr, dwErr);
  }
  if (!fSuccess)
   break;
 }
 return fSuccess;
}
