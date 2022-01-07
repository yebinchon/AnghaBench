
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int V2; } ;
typedef int DWORD ;
typedef TYPE_1__ DRS_MSG_DCINFOREPLY ;


 int PRINT_ERROR (char*,...) ;
 int kull_m_rpc_ms_drsr_FreeDRS_MSG_DCINFOREPLY_V2 (int *) ;

void kull_m_rpc_drsr_free_DRS_MSG_DCINFOREPLY_data(DWORD dcOutVersion, DRS_MSG_DCINFOREPLY * reply)
{
 if(reply)
 {
  switch (dcOutVersion)
  {
  case 2:
   kull_m_rpc_ms_drsr_FreeDRS_MSG_DCINFOREPLY_V2(&reply->V2);
   break;
  case 1:
  case 3:
  case 0xffffffff:
   PRINT_ERROR(L"TODO (maybe?)\n");
   break;
  default:
   PRINT_ERROR(L"dcOutVersion not valid (0x%08x - %u)\n", dcOutVersion, dcOutVersion);
   break;
  }
 }
}
