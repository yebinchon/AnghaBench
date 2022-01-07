
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int SID_NAME_USE ;
typedef int * PWSTR ;
typedef int * PSID_NAME_USE ;
typedef int PSID ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 scalar_t__ LocalFree (int *) ;
 scalar_t__ LookupAccountSid (int ,int ,int *,int*,int *,int*,int *) ;

BOOL kull_m_token_getNameDomainFromSID(PSID pSid, PWSTR * pName, PWSTR * pDomain, PSID_NAME_USE pSidNameUse, LPCWSTR system)
{
 BOOL result = FALSE;
 SID_NAME_USE sidNameUse;
 PSID_NAME_USE peUse = pSidNameUse ? pSidNameUse : &sidNameUse;
 DWORD cchName = 0, cchReferencedDomainName = 0;

 if(!LookupAccountSid(system, pSid, ((void*)0), &cchName, ((void*)0), &cchReferencedDomainName, peUse) && (GetLastError() == ERROR_INSUFFICIENT_BUFFER))
 {
  if(*pName = (PWSTR) LocalAlloc(LPTR, cchName * sizeof(wchar_t)))
  {
   if(*pDomain = (PWSTR) LocalAlloc(LPTR, cchReferencedDomainName * sizeof(wchar_t)))
   {
    result = LookupAccountSid(system, pSid, *pName, &cchName, *pDomain, &cchReferencedDomainName, peUse);
    if(!result)
     *pDomain = (PWSTR) LocalFree(*pDomain);
   }
   if(!result)
    *pName = (PWSTR) LocalFree(*pName);
  }
 }
 return result;
}
