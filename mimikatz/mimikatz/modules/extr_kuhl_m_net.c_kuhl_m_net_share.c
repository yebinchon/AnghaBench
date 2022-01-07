
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int shi502_path; int shi502_max_uses; int shi502_current_uses; int shi502_type; int shi502_netname; } ;
typedef int NTSTATUS ;
typedef scalar_t__ NET_API_STATUS ;
typedef TYPE_1__* LPSHARE_INFO_502 ;
typedef int LPBYTE ;
typedef size_t DWORD ;


 scalar_t__ ERROR_MORE_DATA ;
 int MAX_PREFERRED_LENGTH ;
 int NetApiBufferFree (TYPE_1__*) ;
 scalar_t__ NetShareEnum (int *,int,int *,int ,size_t*,size_t*,size_t*) ;
 int PRINT_ERROR (char*,scalar_t__) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,int ,int ,...) ;
 int kuhl_m_net_share_type (int ) ;

NTSTATUS kuhl_m_net_share(int argc, wchar_t * argv[])
{
 LPSHARE_INFO_502 pBuf;
 DWORD dwEntriesRead;
 DWORD dwTotalEntries;
 DWORD dwResumeHandle = 0;
 DWORD i;
 NET_API_STATUS nStatus;
 do
 {
  nStatus = NetShareEnum (argc ? argv[0] : ((void*)0), 502, (LPBYTE*) &pBuf, MAX_PREFERRED_LENGTH, &dwEntriesRead, &dwTotalEntries, &dwResumeHandle);
  if((nStatus == 0) || (nStatus == ERROR_MORE_DATA))
  {
   for (i = 0; i < dwEntriesRead; i++)
   {
    kprintf(L"\n"
     L"Netname : %s\n"
     L"Type    : %08x - ",
     pBuf[i].shi502_netname, pBuf[i].shi502_type);
    kuhl_m_net_share_type(pBuf[i].shi502_type);
    kprintf(
     L"Uses    : %u/%u\n"
     L"Path    : %s\n",
     pBuf[i].shi502_current_uses, pBuf[i].shi502_max_uses, pBuf[i].shi502_path);
   }
   NetApiBufferFree(pBuf);
  }
  else PRINT_ERROR(L"NetShareEnum: %08x\n", nStatus);
 }
 while (nStatus == ERROR_MORE_DATA);
 return STATUS_SUCCESS;
}
