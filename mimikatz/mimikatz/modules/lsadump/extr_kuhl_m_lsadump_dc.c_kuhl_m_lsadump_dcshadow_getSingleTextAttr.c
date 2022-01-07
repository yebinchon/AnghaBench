
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PWCHAR ;
typedef int PLDAPMessage ;
typedef int PLDAP ;
typedef scalar_t__ PCWCHAR ;


 int kull_m_string_copy (int **,int *) ;
 int ldap_count_values (int **) ;
 int ** ldap_get_values (int ,int ,int *) ;
 int ldap_value_free (int **) ;

PWCHAR kuhl_m_lsadump_dcshadow_getSingleTextAttr(PLDAP ld, PLDAPMessage pMessage, PCWCHAR attr)
{
 PWCHAR *tmp, result = ((void*)0);
 if(tmp = ldap_get_values(ld, pMessage, (PWCHAR) attr))
 {
  if(ldap_count_values(tmp) == 1)
   kull_m_string_copy(&result, tmp[0]);
  ldap_value_free(tmp);
 }
 return result;
}
