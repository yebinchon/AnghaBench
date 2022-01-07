
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int NTSTATUS ;


 int FALSE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*,int ,int ) ;
 int RtlAdjustPrivilege (int ,int ,int ,int *) ;
 int TRUE ;
 int kprintf (char*,int ) ;

NTSTATUS kuhl_m_privilege_simple(ULONG privId)
{
 ULONG previousState;
 NTSTATUS status = RtlAdjustPrivilege(privId, TRUE, FALSE, &previousState);
 if(NT_SUCCESS(status))
  kprintf(L"Privilege \'%u\' OK\n", privId);
 else PRINT_ERROR(L"RtlAdjustPrivilege (%u) %08x\n", privId, status);
 return status;
}
