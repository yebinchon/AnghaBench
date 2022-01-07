
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int V6; } ;
typedef int DWORD ;
typedef TYPE_1__ DRS_MSG_GETCHGREPLY ;


 int PRINT_ERROR (char*,...) ;
 int kull_m_rpc_ms_drsr_FreeDRS_MSG_GETCHGREPLY_V6 (int *) ;

void kull_m_rpc_drsr_free_DRS_MSG_GETCHGREPLY_data(DWORD dwOutVersion, DRS_MSG_GETCHGREPLY * reply)
{
 if(reply)
 {
  switch(dwOutVersion)
  {
  case 6:
   kull_m_rpc_ms_drsr_FreeDRS_MSG_GETCHGREPLY_V6(&reply->V6);
   break;
  case 1:
  case 2:
  case 7:
  case 9:
   PRINT_ERROR(L"TODO (maybe?)\n");
   break;
  default:
   PRINT_ERROR(L"dwOutVersion not valid (0x%08x - %u)\n", dwOutVersion, dwOutVersion);
   break;
  }
 }
}
