
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int length; int* value; } ;
struct TYPE_8__ {int ld; int szConfigurationNamingContext; } ;
struct TYPE_7__ {int dwSyntax; int Oid; int szAttributeName; } ;
typedef int PWCHAR ;
typedef char* PSTR ;
typedef int * PLDAPMessage ;
typedef TYPE_1__* PDCSHADOW_OBJECT_ATTRIBUTE ;
typedef TYPE_2__* PDCSHADOW_DOMAIN_INFO ;
typedef TYPE_3__ OssEncodedOID ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LDAP_SCOPE_SUBTREE ;
 int LDAP_SUCCESS ;
 int LocalFree (int ) ;
 int PRINT_ERROR (char*,...) ;
 int kprintf (char*) ;
 int kuhl_m_lsadump_dcshadow_getSingleTextAttrA (int ,int *,char*) ;
 scalar_t__ kull_m_asn1_DotVal2Eoid (char*,TYPE_3__*) ;
 int kull_m_asn1_freeEnc (int*) ;
 scalar_t__ kull_m_string_sprintf (int *,char*,int ) ;
 int ldap_count_entries (int ,int *) ;
 char** ldap_get_valuesA (int ,int *,char*) ;
 int ldap_msgfree (int *) ;
 int ldap_search_sW (int ,int ,int ,int ,int *,int ,int **) ;
 int ldap_value_freeA (char**) ;
 int strtoul (char*,int *,int) ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_attribute(PDCSHADOW_DOMAIN_INFO info, PDCSHADOW_OBJECT_ATTRIBUTE attribute)
{
 DWORD dwErr;
 PWCHAR attributesFilter;
 PLDAPMessage pAttributeMessage = ((void*)0);
 PSTR szAttributes[] = {"attributeID", "attributeSyntax", "systemFlags", ((void*)0)}, *pszSyntaxOid, *pszFlag;
 OssEncodedOID oid;

 attribute->dwSyntax = 0;
 if(kull_m_string_sprintf(&attributesFilter, L"(&(objectclass=attributeSchema)(lDAPDisplayName=%s))", attribute->szAttributeName))
 {
  dwErr = ldap_search_sW(info->ld, info->szConfigurationNamingContext, LDAP_SCOPE_SUBTREE, attributesFilter, ((void*)0), FALSE, &pAttributeMessage);
  if(dwErr == LDAP_SUCCESS)
  {
   if(ldap_count_entries(info->ld, pAttributeMessage) == 1)
   {
    if(attribute->Oid)
     LocalFree(attribute->Oid);
    attribute->Oid = kuhl_m_lsadump_dcshadow_getSingleTextAttrA(info->ld, pAttributeMessage, szAttributes[0]);
    pszSyntaxOid = ldap_get_valuesA(info->ld, pAttributeMessage, szAttributes[1]);
    if(pszSyntaxOid)
    {
     if(kull_m_asn1_DotVal2Eoid(*pszSyntaxOid, &oid))
     {
      if(oid.length == 3)
       attribute->dwSyntax = (oid.value[0] << 16) + (oid.value[1] << 8) + oid.value[2];
      else PRINT_ERROR(L"oid is invalid %S\n", pszSyntaxOid);
      kull_m_asn1_freeEnc(oid.value);
     }
     ldap_value_freeA(pszSyntaxOid);
    }
    pszFlag = ldap_get_valuesA(info->ld, pAttributeMessage, szAttributes[2]);
    if(pszFlag)
    {
     DWORD systemFlag = strtoul(*pszFlag, ((void*)0), 10);
     if(systemFlag & 1)
      kprintf(L" FLAG_ATTR_NOT_REPLICATED\n");
     if(systemFlag & 4)
      kprintf(L" FLAG_ATTR_IS_CONSTRUCTED\n");
     ldap_value_freeA(pszFlag);
    }
   }
   else PRINT_ERROR(L"attribute does not exist\n");
   ldap_msgfree(pAttributeMessage);
  }
  else PRINT_ERROR(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);
  LocalFree(attributesFilter);
 }
 return attribute->dwSyntax != 0;
}
