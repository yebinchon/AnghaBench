
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int * PVOID ;
typedef int * PRTL_DEBUG_INFORMATION ;
typedef scalar_t__ NTSTATUS ;
typedef int DWORD ;


 int FALSE ;
 int MEM_COMMIT ;
 int MEM_RELEASE ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 scalar_t__ NtAllocateVirtualMemory (int ,int **,int ,int*,int ,int ) ;
 int NtCurrentProcess () ;
 int NtFreeVirtualMemory (int ,int **,int*,int ) ;
 scalar_t__ NtQuerySystemInformation (int ,int *,int,int *) ;
 int PAGE_READWRITE ;
 int RTL_DEBUG_QUERY_HEAPS ;
 int RTL_DEBUG_QUERY_MODULES ;
 int * RtlCreateQueryDebugBuffer (int ,int ) ;
 scalar_t__ RtlQueryProcessDebugInformation (int,int ,int *) ;
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ STATUS_UNSUCCESSFUL ;
 int SystemProcessInformation ;
 int TH32CS_SNAPHEAPLIST ;
 int TH32CS_SNAPMODULE ;
 int TH32CS_SNAPPROCESS ;
 int TH32CS_SNAPTHREAD ;
 int TH32FreeAllocatedResources (int *,int *,int *,int) ;

__attribute__((used)) static NTSTATUS
TH32CreateSnapshot(DWORD dwFlags,
                   DWORD th32ProcessID,
                   PRTL_DEBUG_INFORMATION *HeapDebug,
                   PRTL_DEBUG_INFORMATION *ModuleDebug,
                   PVOID *ProcThrdInfo,
                   SIZE_T *ProcThrdInfoSize)
{
  NTSTATUS Status = STATUS_SUCCESS;

  *HeapDebug = ((void*)0);
  *ModuleDebug = ((void*)0);
  *ProcThrdInfo = ((void*)0);
  *ProcThrdInfoSize = 0;




  if(dwFlags & TH32CS_SNAPHEAPLIST)
  {
    *HeapDebug = RtlCreateQueryDebugBuffer(0, FALSE);
    if(*HeapDebug != ((void*)0))
    {
      Status = RtlQueryProcessDebugInformation(th32ProcessID,
                                               RTL_DEBUG_QUERY_HEAPS,
                                               *HeapDebug);
    }
    else
      Status = STATUS_UNSUCCESSFUL;
  }




  if(dwFlags & TH32CS_SNAPMODULE &&
     NT_SUCCESS(Status))
  {
    *ModuleDebug = RtlCreateQueryDebugBuffer(0, FALSE);
    if(*ModuleDebug != ((void*)0))
    {
      Status = RtlQueryProcessDebugInformation(th32ProcessID,
                                               RTL_DEBUG_QUERY_MODULES,
                                               *ModuleDebug);
    }
    else
      Status = STATUS_UNSUCCESSFUL;
  }





  if(dwFlags & (TH32CS_SNAPPROCESS | TH32CS_SNAPTHREAD) &&
     NT_SUCCESS(Status))
  {
    for(;;)
    {
      (*ProcThrdInfoSize) += 0x10000;
      Status = NtAllocateVirtualMemory(NtCurrentProcess(),
                                       ProcThrdInfo,
                                       0,
                                       ProcThrdInfoSize,
                                       MEM_COMMIT,
                                       PAGE_READWRITE);
      if(!NT_SUCCESS(Status))
      {
        break;
      }

      Status = NtQuerySystemInformation(SystemProcessInformation,
                                        *ProcThrdInfo,
                                        *ProcThrdInfoSize,
                                        ((void*)0));
      if(Status == STATUS_INFO_LENGTH_MISMATCH)
      {
        NtFreeVirtualMemory(NtCurrentProcess(),
                            ProcThrdInfo,
                            ProcThrdInfoSize,
                            MEM_RELEASE);
        *ProcThrdInfo = ((void*)0);
      }
      else
      {
        break;
      }
    }
  }





  if(!NT_SUCCESS(Status))
  {
    TH32FreeAllocatedResources(*HeapDebug,
                               *ModuleDebug,
                               *ProcThrdInfo,
                               *ProcThrdInfoSize);
  }

  return Status;
}
