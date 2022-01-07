
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PWSTR ;
typedef int LDAP ;
typedef int DWORD ;


 int LDAP_AUTH_NEGOTIATE ;
 void* LDAP_OPT_ON ;
 int LDAP_OPT_PROTOCOL_VERSION ;
 int LDAP_OPT_SIGN ;
 int LDAP_VERSION3 ;
 int ldap_bind_s (int *,int *,int *,int ) ;
 int ldap_connect (int *,int *) ;
 int * ldap_init (int ,int) ;
 int ldap_set_option (int *,int ,void*) ;
 int ldap_unbind (int *) ;

ULONG kuhl_m_lsadump_dcshadow_init_ldap(PWSTR szFQDN, LDAP** pld)
{
 DWORD dwErr = 0;
 LDAP* ld;
 if(ld = ldap_init(szFQDN, 389))
 {
  ULONG version = LDAP_VERSION3;

  ldap_set_option(ld,LDAP_OPT_PROTOCOL_VERSION,(void*) &version);

  ldap_set_option(ld,LDAP_OPT_SIGN,LDAP_OPT_ON);



  if(!(dwErr = ldap_connect(ld, ((void*)0))))
  {
   if(!(dwErr = ldap_bind_s(ld, ((void*)0), ((void*)0), LDAP_AUTH_NEGOTIATE)))
   {
    *pld = ld;
   }
   else ldap_unbind(ld);
  }
  else ldap_unbind(ld);
 }
 return dwErr;
}
