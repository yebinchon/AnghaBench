
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {scalar_t__ wkui1_oth_domains; int wkui1_logon_server; int wkui1_logon_domain; int wkui1_username; } ;
typedef int NTSTATUS ;
typedef scalar_t__ NET_API_STATUS ;
typedef TYPE_1__* LPWKSTA_USER_INFO_1 ;
typedef int LPBYTE ;
typedef size_t DWORD ;


 scalar_t__ ERROR_MORE_DATA ;
 int MAX_PREFERRED_LENGTH ;
 int NetApiBufferFree (TYPE_1__*) ;
 scalar_t__ NetWkstaUserEnum (int *,int,int *,int ,size_t*,size_t*,size_t*) ;
 int PRINT_ERROR (char*,scalar_t__) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,scalar_t__,...) ;
 scalar_t__ wcslen (scalar_t__) ;

NTSTATUS kuhl_m_net_wsession(int argc, wchar_t * argv[])
{
 LPWKSTA_USER_INFO_1 pBuf;
 DWORD dwEntriesRead;
 DWORD dwTotalEntries;
 DWORD dwResumeHandle = 0;
 DWORD i;
 NET_API_STATUS nStatus;
 do
 {
  nStatus = NetWkstaUserEnum (argc ? argv[0] : ((void*)0), 1, (LPBYTE*) &pBuf, MAX_PREFERRED_LENGTH, &dwEntriesRead, &dwTotalEntries, &dwResumeHandle);
  if((nStatus == 0) || (nStatus == ERROR_MORE_DATA))
  {
   for (i = 0; i < dwEntriesRead; i++)
   {
    kprintf(L"\n"
     L"Username   : %s\n"
     L"Domain     : %s\n"
     L"LogonServer: %s\n",
     pBuf[i].wkui1_username, pBuf[i].wkui1_logon_domain, pBuf[i].wkui1_logon_server);
    if(pBuf[i].wkui1_oth_domains && wcslen(pBuf[i].wkui1_oth_domains))
     kprintf(L"OthDomains : %s\n", pBuf[i].wkui1_oth_domains);
   }
   NetApiBufferFree(pBuf);
  }
  else PRINT_ERROR(L"NetWkstaUserEnum: %08x\n", nStatus);
 }
 while (nStatus == ERROR_MORE_DATA);
 return STATUS_SUCCESS;
}
