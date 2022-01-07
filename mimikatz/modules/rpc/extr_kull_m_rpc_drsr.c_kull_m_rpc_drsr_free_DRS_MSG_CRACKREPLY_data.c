
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int V1; } ;
typedef int DWORD ;
typedef TYPE_1__ DRS_MSG_CRACKREPLY ;


 int PRINT_ERROR (char*,int,int) ;
 int kull_m_rpc_ms_drsr_FreeDRS_MSG_CRACKREPLY_V1 (int *) ;

void kull_m_rpc_drsr_free_DRS_MSG_CRACKREPLY_data(DWORD nameCrackOutVersion, DRS_MSG_CRACKREPLY * reply)
{
 if(reply)
 {
  switch (nameCrackOutVersion)
  {
  case 1:
   kull_m_rpc_ms_drsr_FreeDRS_MSG_CRACKREPLY_V1(&reply->V1);
   break;
  default:
   PRINT_ERROR(L"nameCrackOutVersion not valid (0x%08x - %u)\n", nameCrackOutVersion, nameCrackOutVersion);
   break;
  }
 }
}
