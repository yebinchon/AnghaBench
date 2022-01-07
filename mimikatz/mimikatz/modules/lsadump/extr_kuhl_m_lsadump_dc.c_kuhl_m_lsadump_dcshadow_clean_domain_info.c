
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ request; scalar_t__ ld; scalar_t__ hGetNCChangeCalled; scalar_t__ szDsServiceName; scalar_t__ szConfigurationNamingContext; scalar_t__ szDCDsServiceName; scalar_t__ szDomainNamingContext; scalar_t__ szDomainName; } ;
typedef TYPE_1__* PDCSHADOW_DOMAIN_INFO ;


 int CloseHandle (scalar_t__) ;
 int LocalFree (scalar_t__) ;
 int kuhl_m_lsadump_dcshadow_clean_push_request (scalar_t__) ;
 int ldap_unbind (scalar_t__) ;

void kuhl_m_lsadump_dcshadow_clean_domain_info(PDCSHADOW_DOMAIN_INFO info)
{
 if(info->szDomainName)
  LocalFree(info->szDomainName);
 if(info->szDomainNamingContext)
  LocalFree(info->szDomainNamingContext);
 if(info->szDCDsServiceName)
  LocalFree(info->szDCDsServiceName);
 if(info->szConfigurationNamingContext)
  LocalFree(info->szConfigurationNamingContext);
 if(info->szDsServiceName)
  LocalFree(info->szDsServiceName);
 if(info->hGetNCChangeCalled)
  CloseHandle(info->hGetNCChangeCalled);
 if(info->ld)
  ldap_unbind(info->ld);
 if(info->request)
  kuhl_m_lsadump_dcshadow_clean_push_request(info->request);
}
