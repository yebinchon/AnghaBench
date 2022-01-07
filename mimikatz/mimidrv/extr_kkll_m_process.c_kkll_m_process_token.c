
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_2__ {scalar_t__ toProcessId; scalar_t__ fromProcessId; } ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef TYPE_1__* PMIMIDRV_PROCESS_TOKEN_FROM_TO ;
typedef int PKIWI_BUFFER ;
typedef scalar_t__ PEPROCESS ;
typedef int NTSTATUS ;
typedef int MIMIDRV_PROCESS_TOKEN_FROM_TO ;
typedef int HANDLE ;


 int KernelMode ;
 scalar_t__ NT_SUCCESS (int ) ;
 int OBJ_KERNEL_HANDLE ;
 int ObDereferenceObject (scalar_t__) ;
 int ObOpenObjectByPointer (scalar_t__,int ,int *,int ,int ,int ,int *) ;
 int PsGetProcessId (scalar_t__) ;
 int PsGetProcessImageFileName (scalar_t__) ;
 scalar_t__ PsInitialSystemProcess ;
 int PsLookupProcessByProcessId (int ,scalar_t__*) ;
 int * PsProcessType ;
 int STATUS_SUCCESS ;
 int ZwClose (int ) ;
 int ZwOpenProcessTokenEx (int ,int ,int ,int *) ;
 int kkll_m_process_enum (int,int ,int ,int ,int ) ;
 int kkll_m_process_systoken_callback ;
 int kkll_m_process_token_toProcess (int,int ,int ,int ,scalar_t__) ;
 int kprintf (int ,char*,int ,int ) ;

NTSTATUS kkll_m_process_token(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer)
{
 NTSTATUS status = STATUS_SUCCESS;
 PMIMIDRV_PROCESS_TOKEN_FROM_TO pTokenFromTo = (PMIMIDRV_PROCESS_TOKEN_FROM_TO) bufferIn;
 ULONG fromProcessId, toProcessId;
 HANDLE hFromProcess, hFromProcessToken;
 PEPROCESS pFromProcess = PsInitialSystemProcess, pToProcess = ((void*)0);

 if(pTokenFromTo && (szBufferIn == sizeof(MIMIDRV_PROCESS_TOKEN_FROM_TO)))
 {
  if(pTokenFromTo->fromProcessId)
   status = PsLookupProcessByProcessId((HANDLE) pTokenFromTo->fromProcessId, &pFromProcess);
  if(NT_SUCCESS(status) && pTokenFromTo->toProcessId)
   status = PsLookupProcessByProcessId((HANDLE) pTokenFromTo->toProcessId, &pToProcess);
 }

 if(NT_SUCCESS(status))
 {
  status = ObOpenObjectByPointer(pFromProcess, OBJ_KERNEL_HANDLE, ((void*)0), 0, *PsProcessType, KernelMode, &hFromProcess);
  if(NT_SUCCESS(status))
  {
   status = ZwOpenProcessTokenEx(hFromProcess, 0, OBJ_KERNEL_HANDLE, &hFromProcessToken);
   if(NT_SUCCESS(status))
   {
    status = kprintf(outBuffer, L"Token from %u/%-14S\n", PsGetProcessId(pFromProcess), PsGetProcessImageFileName(pFromProcess));
    if(NT_SUCCESS(status))
    {
     if(pToProcess)
      status = kkll_m_process_token_toProcess(szBufferIn, bufferIn, outBuffer, hFromProcessToken, pToProcess);
     else
      status = kkll_m_process_enum(szBufferIn, bufferIn, outBuffer, kkll_m_process_systoken_callback, hFromProcessToken);
    }
    ZwClose(hFromProcessToken);
   }
   ZwClose(hFromProcess);
  }
 }

 if(pToProcess)
  ObDereferenceObject(pToProcess);

 if(pFromProcess && (pFromProcess != PsInitialSystemProcess))
  ObDereferenceObject(pFromProcess);

 return status;
}
