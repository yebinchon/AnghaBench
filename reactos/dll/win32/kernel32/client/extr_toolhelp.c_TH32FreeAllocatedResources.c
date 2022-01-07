
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int SIZE_T ;
typedef int * PVOID ;
typedef int * PRTL_DEBUG_INFORMATION ;


 int MEM_RELEASE ;
 int NtCurrentProcess () ;
 int NtFreeVirtualMemory (int ,int **,int *,int ) ;
 int RtlDestroyQueryDebugBuffer (int *) ;

__attribute__((used)) static VOID
TH32FreeAllocatedResources(PRTL_DEBUG_INFORMATION HeapDebug,
                           PRTL_DEBUG_INFORMATION ModuleDebug,
                           PVOID ProcThrdInfo,
                           SIZE_T ProcThrdInfoSize)
{
  if(HeapDebug != ((void*)0))
  {
    RtlDestroyQueryDebugBuffer(HeapDebug);
  }
  if(ModuleDebug != ((void*)0))
  {
    RtlDestroyQueryDebugBuffer(ModuleDebug);
  }

  if(ProcThrdInfo != ((void*)0))
  {
    NtFreeVirtualMemory(NtCurrentProcess(),
                        &ProcThrdInfo,
                        &ProcThrdInfoSize,
                        MEM_RELEASE);
  }
}
