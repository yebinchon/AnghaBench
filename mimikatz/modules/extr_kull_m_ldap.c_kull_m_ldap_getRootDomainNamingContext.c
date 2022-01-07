
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bv_len; int bv_val; } ;
typedef char* PWCHAR ;
typedef int * PLDAPMessage ;
typedef int PCWCHAR ;
typedef TYPE_1__* PBERVAL ;
typedef int LDAP ;
typedef scalar_t__ DWORD ;


 int FALSE ;
 int LDAP_SCOPE_BASE ;
 scalar_t__ LDAP_SUCCESS ;
 int PRINT_ERROR (char*,...) ;
 char* kull_m_string_qad_ansi_c_to_unicode (int ,int ) ;
 int ldap_count_entries (int *,int *) ;
 int ldap_count_values_len (TYPE_1__**) ;
 TYPE_1__** ldap_get_values_len (int *,int *,char*) ;
 int ldap_msgfree (int *) ;
 scalar_t__ ldap_search_s (int *,int *,int ,char*,char**,int ,int **) ;
 int ldap_value_free_len (TYPE_1__**) ;

PWCHAR kull_m_ldap_getRootDomainNamingContext(PCWCHAR nc, LDAP *ld)
{
 DWORD dwErr;
 PWCHAR rootAttr[] = {nc ? (PWCHAR) nc : L"rootDomainNamingContext", ((void*)0)}, ret = ((void*)0);
 PLDAPMessage pMessage = ((void*)0);
 PBERVAL *pBerVal;

 dwErr = ldap_search_s(ld, ((void*)0), LDAP_SCOPE_BASE, L"(dn=RootDSE)", rootAttr, FALSE, &pMessage);
 if(dwErr == LDAP_SUCCESS)
 {
  if(ldap_count_entries(ld, pMessage) == 1)
  {
   if(pBerVal = ldap_get_values_len(ld, pMessage, rootAttr[0]))
   {
    if(ldap_count_values_len(pBerVal) == 1)
     ret = kull_m_string_qad_ansi_c_to_unicode(pBerVal[0]->bv_val, pBerVal[0]->bv_len);
    else PRINT_ERROR(L"ldap_get_values_len is NOT 1\n");
    ldap_value_free_len(pBerVal);
   }
  }
  else PRINT_ERROR(L"ldap_count_entries is NOT 1\n");
 }
 else PRINT_ERROR(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);
 if(pMessage)
  ldap_msgfree(pMessage);
 return ret;
}
