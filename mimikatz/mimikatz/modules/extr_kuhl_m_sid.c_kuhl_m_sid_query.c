
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int * PLDAPMessage ;
typedef int PLDAP ;
typedef int * PCWCHAR ;
typedef int NTSTATUS ;


 int FALSE ;
 int STATUS_SUCCESS ;
 scalar_t__ kuhl_m_sid_quickSearch (int,int **,int ,int *,int *,int **) ;
 int kull_m_string_args_byName (int,int **,char*,int **,int *) ;
 int ldap_msgfree (int *) ;
 int ldap_unbind (int ) ;

NTSTATUS kuhl_m_sid_query(int argc, wchar_t * argv[])
{
 PLDAP ld;
 PLDAPMessage pMessage = ((void*)0);
 PCWCHAR szSystem = ((void*)0);
 kull_m_string_args_byName(argc, argv, L"system", &szSystem, ((void*)0));

 if(kuhl_m_sid_quickSearch(argc, argv, FALSE, szSystem, &ld, &pMessage))
 {
  if(pMessage)
   ldap_msgfree(pMessage);
  ldap_unbind(ld);
 }
 return STATUS_SUCCESS;
}
