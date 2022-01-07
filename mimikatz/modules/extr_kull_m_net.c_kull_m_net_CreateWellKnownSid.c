
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WELL_KNOWN_SID_TYPE ;
typedef int * PSID ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CreateWellKnownSid (int ,int *,int *,scalar_t__*) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int * LocalFree (int *) ;

BOOL kull_m_net_CreateWellKnownSid(WELL_KNOWN_SID_TYPE WellKnownSidType, PSID DomainSid, PSID * pSid)
{
 BOOL status = FALSE;
 DWORD szNeeded = 0, dwError;
 CreateWellKnownSid(WellKnownSidType, DomainSid, ((void*)0), &szNeeded);
 dwError = GetLastError();
 if((dwError == ERROR_INVALID_PARAMETER) || (dwError == ERROR_INSUFFICIENT_BUFFER))
  if(*pSid = (PSID) LocalAlloc(LPTR, szNeeded))
   if(!(status = CreateWellKnownSid(WellKnownSidType, DomainSid, *pSid, &szNeeded)))
    *pSid = LocalFree(*pSid);
 return status;
}
