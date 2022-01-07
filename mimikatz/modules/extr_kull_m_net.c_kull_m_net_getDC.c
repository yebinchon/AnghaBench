
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {scalar_t__ DomainControllerName; } ;
typedef TYPE_1__* PDOMAIN_CONTROLLER_INFO ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ DS_IS_DNS_NAME ;
 scalar_t__ DS_RETURN_DNS_NAME ;
 scalar_t__ DsGetDcName (int *,int ,int *,int *,scalar_t__,TYPE_1__**) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int NetApiBufferFree (TYPE_1__*) ;
 int PRINT_ERROR (char*,scalar_t__) ;
 int RtlCopyMemory (int *,scalar_t__,scalar_t__) ;
 int TRUE ;
 scalar_t__ wcslen (scalar_t__) ;

BOOL kull_m_net_getDC(LPCWSTR fullDomainName, DWORD altFlags, LPWSTR * fullDCName)
{
 BOOL status = FALSE;
 DWORD ret, size;
 PDOMAIN_CONTROLLER_INFO cInfo = ((void*)0);
 ret = DsGetDcName(((void*)0), fullDomainName, ((void*)0), ((void*)0), altFlags | DS_IS_DNS_NAME | DS_RETURN_DNS_NAME, &cInfo);
 if(ret == ERROR_SUCCESS)
 {
  size = (DWORD) (wcslen(cInfo->DomainControllerName + 2) + 1) * sizeof(wchar_t);
  if(*fullDCName = (wchar_t *) LocalAlloc(LPTR, size))
  {
   status = TRUE;
   RtlCopyMemory(*fullDCName, cInfo->DomainControllerName + 2, size);
  }
  NetApiBufferFree(cInfo);
 }
 else PRINT_ERROR(L"DsGetDcName: %u\n", ret);
 return status;
}
