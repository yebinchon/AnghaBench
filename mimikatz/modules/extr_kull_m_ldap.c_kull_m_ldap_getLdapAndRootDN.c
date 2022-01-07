
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PWCHAR ;
typedef int PLDAP ;
typedef scalar_t__ PCWCHAR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LDAP_AUTH_NEGOTIATE ;
 int LDAP_PORT ;
 scalar_t__ LDAP_SUCCESS ;
 scalar_t__ LocalFree (scalar_t__) ;
 int PRINT_ERROR (char*,...) ;
 scalar_t__ kull_m_ldap_getRootDomainNamingContext (scalar_t__,int ) ;
 scalar_t__ ldap_bind_s (int ,int *,int *,int ) ;
 int ldap_init (scalar_t__,int ) ;
 int ldap_unbind (int ) ;

BOOL kull_m_ldap_getLdapAndRootDN(PCWCHAR system, PCWCHAR nc, PLDAP *ld, PWCHAR *rootDn)
{
 BOOL status = FALSE;
 DWORD dwErr;

 if(*ld = ldap_init((PWCHAR) system, LDAP_PORT))
 {
  if(*rootDn = kull_m_ldap_getRootDomainNamingContext(nc, *ld))
  {
   dwErr = ldap_bind_s(*ld, ((void*)0), ((void*)0), LDAP_AUTH_NEGOTIATE);
   status = (dwErr == LDAP_SUCCESS);
   if(!status)
   {
    PRINT_ERROR(L"ldap_bind_s 0x%x (%u)\n", dwErr, dwErr);
    *rootDn = (PWCHAR) LocalFree(*rootDn);
   }
  }
  if(!status)
   ldap_unbind(*ld);
 }
 else PRINT_ERROR(L"ldap_init\n");
 return status;
}
