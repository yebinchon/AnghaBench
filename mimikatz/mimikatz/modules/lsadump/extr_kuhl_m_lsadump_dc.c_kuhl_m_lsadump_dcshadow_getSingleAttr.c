
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bv_len; scalar_t__ bv_val; } ;
typedef int PWCHAR ;
typedef int PLDAPMessage ;
typedef int PLDAP ;
typedef scalar_t__ PCWCHAR ;
typedef scalar_t__ PCHAR ;
typedef TYPE_1__* PBERVAL ;
typedef int BERVAL ;


 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 scalar_t__ LocalFree (TYPE_1__*) ;
 int RtlCopyMemory (scalar_t__,scalar_t__,int) ;
 int ldap_count_values_len (TYPE_1__**) ;
 TYPE_1__** ldap_get_values_len (int ,int ,int ) ;
 int ldap_value_free_len (TYPE_1__**) ;

PBERVAL kuhl_m_lsadump_dcshadow_getSingleAttr(PLDAP ld, PLDAPMessage pMessage, PCWCHAR attr)
{
 PBERVAL *tmp, result = ((void*)0);
 if(tmp = ldap_get_values_len(ld, pMessage, (PWCHAR) attr))
 {
  if(ldap_count_values_len(tmp) == 1)
  {
   if(result = (PBERVAL) LocalAlloc(LPTR, sizeof(BERVAL)))
   {
    result->bv_len = tmp[0]->bv_len;
    if(result->bv_val = (PCHAR) LocalAlloc(LPTR, result->bv_len))
     RtlCopyMemory(result->bv_val, tmp[0]->bv_val, result->bv_len);
    else result = (PBERVAL) LocalFree(result);
   }
  }
  ldap_value_free_len(tmp);
 }
 return result;
}
