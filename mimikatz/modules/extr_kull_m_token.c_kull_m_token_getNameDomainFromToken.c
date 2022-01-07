
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Sid; } ;
struct TYPE_6__ {TYPE_1__ User; } ;
typedef int PWSTR ;
typedef TYPE_2__* PTOKEN_USER ;
typedef int PSID_NAME_USE ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int ConvertSidToStringSid (int ,int *) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetTokenInformation (int ,int ,TYPE_2__*,int ,int *) ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int ) ;
 int LocalFree (TYPE_2__*) ;
 int TokenUser ;
 int kull_m_token_getNameDomainFromSID (int ,int *,int *,int ,int *) ;

BOOL kull_m_token_getNameDomainFromToken(HANDLE hToken, PWSTR * pName, PWSTR * pDomain, PWSTR * pSid, PSID_NAME_USE pSidNameUse)
{
 BOOL result = FALSE;
 PTOKEN_USER pTokenUser;
 DWORD szNeeded;

 if(!GetTokenInformation(hToken, TokenUser, ((void*)0), 0, &szNeeded) && (GetLastError() == ERROR_INSUFFICIENT_BUFFER))
 {
  if(pTokenUser = (PTOKEN_USER) LocalAlloc(LPTR, szNeeded))
  {
   if(GetTokenInformation(hToken, TokenUser, pTokenUser, szNeeded, &szNeeded))
   {
    if((result = kull_m_token_getNameDomainFromSID(pTokenUser->User.Sid, pName, pDomain, pSidNameUse, ((void*)0))) && pSid)
     result = ConvertSidToStringSid(pTokenUser->User.Sid, pSid);
   }
   LocalFree(pTokenUser);
  }
 }
 return result;
}
