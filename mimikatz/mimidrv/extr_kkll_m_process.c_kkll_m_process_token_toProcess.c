
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_3__ {int Token; int * member_1; int * member_0; } ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef int* PULONG ;
typedef TYPE_1__ PROCESS_ACCESS_TOKEN ;
typedef int PKIWI_BUFFER ;
typedef scalar_t__ PEPROCESS ;
typedef int PCHAR ;
typedef int NTSTATUS ;
typedef int HANDLE ;


 scalar_t__** EPROCESS_OffSetTable ;
 size_t EprocessFlags2 ;
 int FALSE ;
 int KernelMode ;
 size_t KiwiOsIndex ;
 size_t KiwiOsIndex_VISTA ;
 scalar_t__ NT_SUCCESS (int ) ;
 int OBJ_KERNEL_HANDLE ;
 int ObOpenObjectByPointer (scalar_t__,int ,int *,int ,int ,int ,int *) ;
 int ProcessAccessToken ;
 int PsGetProcessId (scalar_t__) ;
 int PsGetProcessImageFileName (scalar_t__) ;
 int * PsProcessType ;
 int TOKEN_FROZEN_MASK ;
 int TokenPrimary ;
 int ZwClose (int ) ;
 int ZwDuplicateToken (int ,int ,int *,int ,int ,int *) ;
 int ZwSetInformationProcess (int ,int ,TYPE_1__*,int) ;
 int kprintf (int ,char*,int ,int ,...) ;

NTSTATUS kkll_m_process_token_toProcess(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer, HANDLE hSrcToken, PEPROCESS pToProcess)
{
 PROCESS_ACCESS_TOKEN ProcessTokenInformation = {((void*)0), ((void*)0)};
 HANDLE hToProcess;
 PULONG pFlags2 = ((void*)0);
 NTSTATUS status;
 HANDLE processId = PsGetProcessId(pToProcess);
 PCHAR processName = PsGetProcessImageFileName(pToProcess);

 status = ObOpenObjectByPointer(pToProcess, OBJ_KERNEL_HANDLE, ((void*)0), 0, *PsProcessType, KernelMode, &hToProcess);
 if(NT_SUCCESS(status))
 {
  status = ZwDuplicateToken(hSrcToken, 0, ((void*)0), FALSE, TokenPrimary, &ProcessTokenInformation.Token);
  if(NT_SUCCESS(status))
  {
   if(KiwiOsIndex >= KiwiOsIndex_VISTA)
   {
    pFlags2 = (PULONG) (((ULONG_PTR) pToProcess) + EPROCESS_OffSetTable[KiwiOsIndex][EprocessFlags2]);
    if(*pFlags2 & TOKEN_FROZEN_MASK)
     *pFlags2 &= ~TOKEN_FROZEN_MASK;
    else
     pFlags2 = ((void*)0);
   }

   status = ZwSetInformationProcess(hToProcess, ProcessAccessToken, &ProcessTokenInformation, sizeof(PROCESS_ACCESS_TOKEN));
   if(NT_SUCCESS(status))
    status = kprintf(outBuffer, L" * to %u/%-14S\n", processId, processName);
   else
    status = kprintf(outBuffer, L" ! ZwSetInformationProcess 0x%08x for %u/%-14S\n", status, processId, processName);

   if((KiwiOsIndex >= KiwiOsIndex_VISTA) && pFlags2)
    *pFlags2 |= TOKEN_FROZEN_MASK;

   ZwClose(ProcessTokenInformation.Token);
  }
  ZwClose(hToProcess);
 }
 return status;
}
