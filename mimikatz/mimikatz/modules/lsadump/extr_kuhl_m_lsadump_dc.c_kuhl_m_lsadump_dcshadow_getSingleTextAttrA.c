
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PSTR ;
typedef int PLDAPMessage ;
typedef int PLDAP ;
typedef scalar_t__ PCSTR ;


 int kull_m_string_copyA (int **,int *) ;
 int ldap_count_valuesA (int **) ;
 int ** ldap_get_valuesA (int ,int ,int *) ;
 int ldap_value_freeA (int **) ;

PSTR kuhl_m_lsadump_dcshadow_getSingleTextAttrA(PLDAP ld, PLDAPMessage pMessage, PCSTR attr)
{
 PSTR *tmp, result = ((void*)0);

 if(tmp = ldap_get_valuesA(ld, pMessage, (PSTR) attr))
 {
  if(ldap_count_valuesA(tmp) == 1)
   kull_m_string_copyA(&result, tmp[0]);
  ldap_value_freeA(tmp);
 }
 return result;
}
