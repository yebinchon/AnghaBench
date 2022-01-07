
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int SID_NAME_USE ;
typedef int * PWSTR ;
typedef int * PSID_NAME_USE ;
typedef int * PSID ;
typedef int PCWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 scalar_t__ LocalFree (int *) ;
 scalar_t__ LookupAccountName (int ,int ,int *,int*,int *,int*,int *) ;

BOOL kull_m_token_getSidDomainFromName(PCWSTR pName, PSID * pSid, PWSTR * pDomain, PSID_NAME_USE pSidNameUse, LPCWSTR system)
{
 BOOL result = FALSE;
 SID_NAME_USE sidNameUse;
 PSID_NAME_USE peUse = pSidNameUse ? pSidNameUse : &sidNameUse;
 DWORD cbSid = 0, cchReferencedDomainName = 0;

 if(!LookupAccountName(system, pName, ((void*)0), &cbSid, ((void*)0), &cchReferencedDomainName, peUse) && (GetLastError() == ERROR_INSUFFICIENT_BUFFER))
 {
  if(*pSid = (PSID) LocalAlloc(LPTR, cbSid * sizeof(wchar_t)))
  {
   if(*pDomain = (PWSTR) LocalAlloc(LPTR, cchReferencedDomainName * sizeof(wchar_t)))
   {
    result = LookupAccountName(system, pName, *pSid, &cbSid, *pDomain, &cchReferencedDomainName, peUse);
    if(!result)
     *pDomain = (PWSTR) LocalFree(*pDomain);
   }
   if(!result)
    *pSid = (PSID) LocalFree(*pSid);
  }
 }
 return result;
}
