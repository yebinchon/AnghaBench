
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UNICODE_STRING ;
typedef int SID_NAME_USE ;
typedef int SAMPR_HANDLE ;
typedef int NTSTATUS ;
typedef scalar_t__ DWORD ;


 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*,int ) ;
 int SamFreeMemory (scalar_t__*) ;
 int SamLookupIdsInDomain (int ,int,scalar_t__*,scalar_t__**,scalar_t__**) ;
 int kprintf (char*,scalar_t__*,int ) ;
 int kull_m_token_getSidNameUse (int ) ;

void kuhl_m_net_simpleLookup(SAMPR_HANDLE hDomainHandle, DWORD rid)
{
 NTSTATUS status;
 UNICODE_STRING *name;
 DWORD *usage;

 status = SamLookupIdsInDomain(hDomainHandle, 1, &rid, &name, &usage);
 if(NT_SUCCESS(status))
 {
  kprintf(L"%wZ\t(%s)", name, kull_m_token_getSidNameUse((SID_NAME_USE) *usage));
  SamFreeMemory(name);
  SamFreeMemory(usage);
 }
 else PRINT_ERROR(L"SamLookupIdsInDomain %08x", status);
}
