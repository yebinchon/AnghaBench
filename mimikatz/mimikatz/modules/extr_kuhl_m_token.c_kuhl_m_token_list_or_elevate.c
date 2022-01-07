
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef scalar_t__ WELL_KNOWN_SID_TYPE ;
struct TYPE_7__ {char* pCommandLine; char* pUsername; int pSid; scalar_t__ tokenId; int * member_5; scalar_t__ member_4; scalar_t__ member_3; int member_2; int * member_1; int * member_0; } ;
struct TYPE_6__ {int * Sid; } ;
typedef int PWSTR ;
typedef TYPE_1__* PPOLICY_DNS_DOMAIN_INFO ;
typedef char* PCWSTR ;
typedef int NTSTATUS ;
typedef TYPE_2__ KUHL_M_TOKEN_ELEVATE_DATA ;
typedef scalar_t__ BOOL ;


 int LocalFree (int ) ;
 int LsaFreeMemory (TYPE_1__*) ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 scalar_t__ WinAccountDomainAdminsSid ;
 scalar_t__ WinAccountEnterpriseAdminsSid ;
 scalar_t__ WinBuiltinAdministratorsSid ;
 scalar_t__ WinLocalSystemSid ;
 scalar_t__ WinNullSid ;
 int kprintf (char*,...) ;
 int kuhl_m_token_list_or_elevate_callback ;
 scalar_t__ kull_m_net_CreateWellKnownSid (scalar_t__,int *,int *) ;
 int kull_m_net_getCurrentDomainInfo (TYPE_1__**) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,char**,char*) ;
 scalar_t__ kull_m_token_getNameDomainFromSID (int ,int *,int *,int *,int *) ;
 int kull_m_token_getTokensUnique (int ,TYPE_2__*) ;
 scalar_t__ wcstoul (char*,int *,int ) ;

NTSTATUS kuhl_m_token_list_or_elevate(int argc, wchar_t * argv[], BOOL elevate, BOOL runIt)
{
 KUHL_M_TOKEN_ELEVATE_DATA pData = {((void*)0), ((void*)0), 0, elevate, runIt, ((void*)0)};
 WELL_KNOWN_SID_TYPE type = WinNullSid;
 PWSTR name, domain;
 PCWSTR strTokenId;
 PPOLICY_DNS_DOMAIN_INFO pDomainInfo = ((void*)0);

 if(runIt)
  kull_m_string_args_byName(argc, argv, L"process", &pData.pCommandLine, L"whoami.exe");
 kull_m_string_args_byName(argc, argv, L"user", &pData.pUsername, ((void*)0));

 if(kull_m_string_args_byName(argc, argv, L"id", &strTokenId, ((void*)0)))
 {
  pData.tokenId = wcstoul(strTokenId, ((void*)0), 0);
 }
 else if(kull_m_string_args_byName(argc, argv, L"domainadmin", ((void*)0), ((void*)0)))
  type = WinAccountDomainAdminsSid;
 else if(kull_m_string_args_byName(argc, argv, L"enterpriseadmin", ((void*)0), ((void*)0)))
  type = WinAccountEnterpriseAdminsSid;
 else if(kull_m_string_args_byName(argc, argv, L"admin", ((void*)0), ((void*)0)))
  type = WinBuiltinAdministratorsSid;
 else if((elevate && !pData.pUsername) || kull_m_string_args_byName(argc, argv, L"system", ((void*)0), ((void*)0)))
 {
  type = WinLocalSystemSid;
  if(pData.pUsername)
  {
   PRINT_ERROR(L"No username available when SYSTEM\n");
   pData.pUsername = ((void*)0);
  }
 }

 if((type == WinAccountDomainAdminsSid) || (type == WinAccountEnterpriseAdminsSid))
  if(!kull_m_net_getCurrentDomainInfo(&pDomainInfo))
   PRINT_ERROR_AUTO(L"kull_m_local_domain_user_getCurrentDomainSID");

 if(!elevate || !runIt || pData.tokenId || type || pData.pUsername)
 {
  kprintf(L"Token Id  : %u\nUser name : %s\nSID name  : ", pData.tokenId, pData.pUsername ? pData.pUsername : L"");
  if(type)
  {
   if(kull_m_net_CreateWellKnownSid(type, pDomainInfo ? pDomainInfo->Sid : ((void*)0), &pData.pSid))
   {
    if(kull_m_token_getNameDomainFromSID(pData.pSid, &name, &domain, ((void*)0), ((void*)0)))
    {
     kprintf(L"%s\\%s\n", domain, name);
     LocalFree(name);
     LocalFree(domain);
    }
    else PRINT_ERROR_AUTO(L"kull_m_token_getNameDomainFromSID");
   }
   else PRINT_ERROR_AUTO(L"kull_m_local_domain_user_CreateWellKnownSid");
  }
  else kprintf(L"\n");
  kprintf(L"\n");

  if(!elevate || !runIt || pData.tokenId || pData.pSid || pData.pUsername)
   kull_m_token_getTokensUnique(kuhl_m_token_list_or_elevate_callback, &pData);


  if(pData.pSid)
   LocalFree(pData.pSid);
  if(pDomainInfo)
   LsaFreeMemory(pDomainInfo);
 }
 return STATUS_SUCCESS;
}
