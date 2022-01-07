
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {TYPE_1__* request; } ;
struct TYPE_5__ {scalar_t__ cNumObjects; scalar_t__ pObjects; } ;
typedef TYPE_2__* PDCSHADOW_DOMAIN_INFO ;
typedef int NTSTATUS ;
typedef scalar_t__ DWORD ;
typedef int DRS_HANDLE ;


 int NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*,scalar_t__,int ) ;
 int STATUS_UNSUCCESSFUL ;
 int kuhl_m_lsadump_dcshadow_call_AddEntry (TYPE_2__*,int ,scalar_t__) ;

ULONG kuhl_m_lsadump_dcshadow_call_AddEntry_manual(PDCSHADOW_DOMAIN_INFO info, DRS_HANDLE hDrs)
{
 NTSTATUS status = STATUS_UNSUCCESSFUL;
 DWORD i;
 for(i = 0; i < info->request->cNumObjects; i++)
 {
  if(!NT_SUCCESS(status = kuhl_m_lsadump_dcshadow_call_AddEntry(info, hDrs, info->request->pObjects + i)))
  {
   PRINT_ERROR(L"DRSAddEntry object %u: 0x%08x\n", i, status);
   break;
  }
 }
 return status;
}
