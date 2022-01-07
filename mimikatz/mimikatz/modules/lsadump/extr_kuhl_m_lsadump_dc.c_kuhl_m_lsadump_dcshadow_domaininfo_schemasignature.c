
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct berval {int bv_len; int bv_val; } ;
struct TYPE_3__ {int* pbSchemaSignature; int ld; int szSchemaNamingContext; } ;
typedef int * PWSTR ;
typedef int * PLDAPMessage ;
typedef TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LDAP_SCOPE_BASE ;
 scalar_t__ LDAP_SUCCESS ;
 int RtlCopyMemory (int*,int ,int) ;
 int RtlZeroMemory (int*,int) ;
 int * TEXT (char*) ;
 int kprintf (char*) ;
 int kull_m_string_wprintf_hex (int*,int,int ) ;
 struct berval** ldap_get_values_len (int ,int *,int *) ;
 int ldap_msgfree (int *) ;
 scalar_t__ ldap_search_s (int ,int ,int ,int *,int **,int ,int **) ;

BOOL kuhl_m_lsadump_dcshadow_domaininfo_schemasignature(PDCSHADOW_DOMAIN_INFO info)
{
 DWORD dwErr;
 PWSTR szAttributes[] = {TEXT("schemaInfo"), ((void*)0)};
 PLDAPMessage pMessage = ((void*)0);
 struct berval** berSchemaInfo = ((void*)0);

 dwErr = ldap_search_s(info->ld, info->szSchemaNamingContext, LDAP_SCOPE_BASE, ((void*)0), szAttributes, FALSE, &pMessage);
 if(dwErr == LDAP_SUCCESS)
 {
  berSchemaInfo = ldap_get_values_len(info->ld, pMessage,szAttributes[0]);
  if(!berSchemaInfo || (*berSchemaInfo)->bv_len != 21)
  {

   info->pbSchemaSignature[0] = 0xFF;
   RtlZeroMemory(info->pbSchemaSignature + 1, 20);
  }
  else
   RtlCopyMemory(info->pbSchemaSignature, (*berSchemaInfo)->bv_val, 21);
  ldap_msgfree(pMessage);
  kprintf(L"schema signature:");
  kull_m_string_wprintf_hex(info->pbSchemaSignature, 21, 0);
  kprintf(L"\n");
 }
 return (dwErr == LDAP_SUCCESS);
}
