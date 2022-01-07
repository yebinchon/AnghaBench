
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_3__ {int Signer; int Audit; int Type; } ;
struct TYPE_4__ {TYPE_1__ Protection; int SectionSignatureLevel; int SignatureLevel; } ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef int* PULONG ;
typedef TYPE_2__* PKIWI_PROCESS_SIGNATURE_PROTECTION ;
typedef int PKIWI_BUFFER ;
typedef scalar_t__ PEPROCESS ;
typedef int PCHAR ;
typedef int NTSTATUS ;
typedef int HANDLE ;


 scalar_t__** EPROCESS_OffSetTable ;
 size_t EprocessFlags2 ;
 size_t KiwiOsIndex ;
 size_t KiwiOsIndex_8 ;
 size_t KiwiOsIndex_VISTA ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PROTECTED_PROCESS_MASK ;
 int PsGetProcessId (scalar_t__) ;
 int PsGetProcessImageFileName (scalar_t__) ;
 size_t SignatureProtect ;
 int TOKEN_FROZEN_MASK ;
 int kprintf (int ,char*,...) ;

NTSTATUS kkll_m_process_list_callback(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer, PEPROCESS pProcess, PVOID pvArg)
{
 NTSTATUS status;
 PKIWI_PROCESS_SIGNATURE_PROTECTION pSignatureProtect = ((void*)0);
 PULONG pFlags2 = ((void*)0);

 HANDLE processId = PsGetProcessId(pProcess);
 PCHAR processName = PsGetProcessImageFileName(pProcess);

 status = kprintf(outBuffer, L"%u\t%-14S", processId, processName);
 if(NT_SUCCESS(status))
 {
  if(KiwiOsIndex >= KiwiOsIndex_VISTA)
  {
   pFlags2 = (PULONG) (((ULONG_PTR) pProcess) + EPROCESS_OffSetTable[KiwiOsIndex][EprocessFlags2]);
   status = kprintf(outBuffer, L"\t%s", (*pFlags2 & TOKEN_FROZEN_MASK) ? L"F-Tok" : L"     ");
   if(NT_SUCCESS(status))
   {
    if(KiwiOsIndex >= KiwiOsIndex_8)
    {
     pSignatureProtect = (PKIWI_PROCESS_SIGNATURE_PROTECTION) (((ULONG_PTR) pProcess) + EPROCESS_OffSetTable[KiwiOsIndex][SignatureProtect]);
     status = kprintf(outBuffer, L"\tSig %02x/%02x", pSignatureProtect->SignatureLevel, pSignatureProtect->SectionSignatureLevel);
     if(NT_SUCCESS(status) && (KiwiOsIndex > KiwiOsIndex_8))
      status = kprintf(outBuffer, L" [%1x-%1x-%1x]", pSignatureProtect->Protection.Type, pSignatureProtect->Protection.Audit, pSignatureProtect->Protection.Signer);
    }
    else if(*pFlags2 & PROTECTED_PROCESS_MASK)
    {
     status = kprintf(outBuffer, L"\tP-Proc");
    }
   }
  }
  if(NT_SUCCESS(status))
   kprintf(outBuffer, L"\n");
 }
 return status;
}
