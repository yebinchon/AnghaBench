
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef int PVOID ;
typedef int PPOLICY_DNS_DOMAIN_INFO ;
typedef TYPE_1__ LSA_OBJECT_ATTRIBUTES ;
typedef int LSA_HANDLE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int LsaClose (int ) ;
 int LsaOpenPolicy (int *,TYPE_1__*,int ,int *) ;
 int LsaQueryInformationPolicy (int ,int ,int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int POLICY_VIEW_LOCAL_INFORMATION ;
 int PolicyDnsDomainInformation ;

BOOL kull_m_net_getCurrentDomainInfo(PPOLICY_DNS_DOMAIN_INFO * pDomainInfo)
{
 BOOL status = FALSE;
 LSA_HANDLE hLSA;
 LSA_OBJECT_ATTRIBUTES oaLsa = {0};

 if(NT_SUCCESS(LsaOpenPolicy(((void*)0), &oaLsa, POLICY_VIEW_LOCAL_INFORMATION, &hLSA)))
 {
  status = NT_SUCCESS(LsaQueryInformationPolicy(hLSA, PolicyDnsDomainInformation, (PVOID *) pDomainInfo));
  LsaClose(hLSA);
 }
 return status;
}
