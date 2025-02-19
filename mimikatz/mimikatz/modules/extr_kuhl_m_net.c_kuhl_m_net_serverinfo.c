
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int sv102_type; int sv102_comment; int sv102_version_minor; int sv102_version_major; int sv102_name; int sv102_platform_id; } ;
typedef int NTSTATUS ;
typedef scalar_t__ NET_API_STATUS ;
typedef TYPE_1__* LPSERVER_INFO_102 ;
typedef int LPBYTE ;
typedef int DWORD ;


 int ARRAYSIZE (int *) ;
 scalar_t__ NERR_Success ;
 int NetApiBufferFree (TYPE_1__*) ;
 scalar_t__ NetServerGetInfo (int *,int,int *) ;
 int PRINT_ERROR (char*,scalar_t__) ;
 int STATUS_SUCCESS ;
 int * SV_TYPES ;
 int kprintf (char*,...) ;

NTSTATUS kuhl_m_net_serverinfo(int argc, wchar_t * argv[])
{
 LPSERVER_INFO_102 pServerInfo;
 NET_API_STATUS nStatus;
 DWORD i;
 nStatus = NetServerGetInfo(argc ? argv[0] : ((void*)0), 102, (LPBYTE*) &pServerInfo);
 if(nStatus == NERR_Success)
 {
  kprintf(L"platform_id: %u\n"
    L"name       : %s\n"
    L"version    : %u.%u\n"
    L"comment    : %s\n"
    L"type       : %08x - ",
  pServerInfo->sv102_platform_id, pServerInfo->sv102_name, pServerInfo->sv102_version_major, pServerInfo->sv102_version_minor, pServerInfo->sv102_comment, pServerInfo->sv102_type);

  for(i = 0; i < ARRAYSIZE(SV_TYPES); i++)
   if((1 << i) & pServerInfo->sv102_type)
    kprintf(L"%s ; ", SV_TYPES[i]);
  kprintf(L"\n");
  NetApiBufferFree(pServerInfo);
 }
 else PRINT_ERROR(L"NetServerGetInfo: %08x\n", nStatus);
 return STATUS_SUCCESS;
}
