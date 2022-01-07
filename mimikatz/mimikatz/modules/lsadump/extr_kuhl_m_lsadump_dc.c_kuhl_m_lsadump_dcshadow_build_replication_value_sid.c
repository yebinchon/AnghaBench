
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pVal; int valLen; } ;
typedef scalar_t__ PWSTR ;
typedef int PSID ;
typedef int PCWSTR ;
typedef int * PBYTE ;
typedef int BOOL ;
typedef TYPE_1__ ATTRVAL ;


 scalar_t__ ConvertStringSidToSid (int ,int *) ;
 int GetLengthSid (int ) ;
 int LocalFree (int ) ;
 scalar_t__ MIDL_user_allocate (int ) ;
 int PRINT_ERROR_AUTO (char*) ;
 int RtlCopyMemory (int *,int ,int ) ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_value_sid(ATTRVAL* pVal, PWSTR szValue)
{
 PSID pSid;
 pVal->pVal = ((void*)0);
 if(ConvertStringSidToSid((PCWSTR) szValue, &pSid))
 {
  pVal->valLen = GetLengthSid(pSid);
  if(pVal->pVal = (PBYTE) MIDL_user_allocate(pVal->valLen))
   RtlCopyMemory(pVal->pVal, pSid, pVal->valLen);
  else PRINT_ERROR_AUTO(L"LocalAlloc");
  LocalFree(pSid);
 }
 else PRINT_ERROR_AUTO(L"ConvertStringSidToSid");
 return pVal->pVal != ((void*)0);
}
