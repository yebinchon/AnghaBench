
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int SIZE_T ;
typedef scalar_t__ PVOID ;
typedef int (* PKKLL_M_PROCESS_CALLBACK ) (int ,scalar_t__,int ,scalar_t__,scalar_t__) ;
typedef int PKIWI_BUFFER ;
typedef scalar_t__ PEPROCESS ;
typedef int NTSTATUS ;


 scalar_t__** EPROCESS_OffSetTable ;
 size_t EprocessNext ;
 size_t KiwiOsIndex ;
 scalar_t__ NT_SUCCESS (int ) ;
 scalar_t__ PsInitialSystemProcess ;
 int STATUS_SUCCESS ;

NTSTATUS kkll_m_process_enum(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer, PKKLL_M_PROCESS_CALLBACK callback, PVOID pvArg)
{
 NTSTATUS status = STATUS_SUCCESS;
 PEPROCESS pProcess = ((void*)0);
 for(
  pProcess = PsInitialSystemProcess;
  NT_SUCCESS(status) && (PEPROCESS) ((ULONG_PTR) (*(PVOID *) (((ULONG_PTR) pProcess) + EPROCESS_OffSetTable[KiwiOsIndex][EprocessNext])) - EPROCESS_OffSetTable[KiwiOsIndex][EprocessNext]) != PsInitialSystemProcess;
  pProcess = (PEPROCESS) ((ULONG_PTR) (*(PVOID *) (((ULONG_PTR) pProcess) + EPROCESS_OffSetTable[KiwiOsIndex][EprocessNext])) - EPROCESS_OffSetTable[KiwiOsIndex][EprocessNext])
  )
 {
  status = callback(szBufferIn, bufferIn, outBuffer, pProcess, pvArg);
 }
 return status;
}
