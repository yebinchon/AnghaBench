
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int sesi10_idle_time; int sesi10_time; int sesi10_username; int sesi10_cname; } ;
typedef int NTSTATUS ;
typedef scalar_t__ NET_API_STATUS ;
typedef TYPE_1__* LPSESSION_INFO_10 ;
typedef int LPBYTE ;
typedef size_t DWORD ;


 scalar_t__ ERROR_MORE_DATA ;
 int MAX_PREFERRED_LENGTH ;
 int NetApiBufferFree (TYPE_1__*) ;
 scalar_t__ NetSessionEnum (int *,int *,int *,int,int *,int ,size_t*,size_t*,size_t*) ;
 int PRINT_ERROR (char*,scalar_t__) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,int ,int ,int ,int ) ;

NTSTATUS kuhl_m_net_session(int argc, wchar_t * argv[])
{
 LPSESSION_INFO_10 pBuf;
 DWORD dwEntriesRead;
 DWORD dwTotalEntries;
 DWORD dwResumeHandle = 0;
 DWORD i;
 NET_API_STATUS nStatus;
 do
 {
  nStatus = NetSessionEnum(argc ? argv[0] : ((void*)0), ((void*)0), ((void*)0), 10, (LPBYTE*) &pBuf, MAX_PREFERRED_LENGTH, &dwEntriesRead, &dwTotalEntries, &dwResumeHandle);
  if((nStatus == 0) || (nStatus == ERROR_MORE_DATA))
  {
   for (i = 0; i < dwEntriesRead; i++)
    kprintf(L"\n"
     L"Client  : %s\n"
     L"Username: %s\n"
     L"Active  : %u\n"
     L"Idle    : %u\n",
     pBuf[i].sesi10_cname, pBuf[i].sesi10_username, pBuf[i].sesi10_time, pBuf[i].sesi10_idle_time);
   NetApiBufferFree(pBuf);
  }
  else PRINT_ERROR(L"NetSessionEnum: %08x\n", nStatus);
 }
 while (nStatus == ERROR_MORE_DATA);
 return STATUS_SUCCESS;
}
