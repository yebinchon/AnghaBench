
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_6__ {int Protection; int SectionSignatureLevel; scalar_t__ SignatureLevel; } ;
struct TYPE_4__ {int Protection; int SectionSignatureLevel; scalar_t__ SignatureLevel; } ;
struct TYPE_5__ {TYPE_1__ SignatureProtection; scalar_t__ processId; } ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef int * PULONG ;
typedef TYPE_2__* PMIMIDRV_PROCESS_PROTECT_INFORMATION ;
typedef TYPE_3__* PKIWI_PROCESS_SIGNATURE_PROTECTION ;
typedef int PKIWI_BUFFER ;
typedef int * PEPROCESS ;
typedef int NTSTATUS ;
typedef int MIMIDRV_PROCESS_PROTECT_INFORMATION ;
typedef int HANDLE ;


 scalar_t__** EPROCESS_OffSetTable ;
 size_t EprocessFlags2 ;
 size_t KiwiOsIndex ;
 size_t KiwiOsIndex_8 ;
 size_t KiwiOsIndex_VISTA ;
 scalar_t__ NT_SUCCESS (int ) ;
 int ObDereferenceObject (int *) ;
 int PROTECTED_PROCESS_MASK ;
 int PsLookupProcessByProcessId (int ,int **) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NOT_SUPPORTED ;
 size_t SignatureProtect ;

NTSTATUS kkll_m_process_protect(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer)
{
 NTSTATUS status;
 PEPROCESS pProcess = ((void*)0);
 PKIWI_PROCESS_SIGNATURE_PROTECTION pSignatureProtect = ((void*)0);
 PULONG pFlags2 = ((void*)0);
 PMIMIDRV_PROCESS_PROTECT_INFORMATION pInfos = (PMIMIDRV_PROCESS_PROTECT_INFORMATION) bufferIn;

 if(KiwiOsIndex >= KiwiOsIndex_VISTA)
 {
  if(pInfos && (szBufferIn == sizeof(MIMIDRV_PROCESS_PROTECT_INFORMATION)))
  {
   status = PsLookupProcessByProcessId((HANDLE) pInfos->processId, &pProcess);
   if(NT_SUCCESS(status))
   {
    if(KiwiOsIndex < KiwiOsIndex_8)
    {
     pFlags2 = (PULONG) (((ULONG_PTR) pProcess) + EPROCESS_OffSetTable[KiwiOsIndex][EprocessFlags2]);
     if(pInfos->SignatureProtection.SignatureLevel)
      *pFlags2 |= PROTECTED_PROCESS_MASK;
     else
      *pFlags2 &= ~PROTECTED_PROCESS_MASK;
    }
    else
    {
     pSignatureProtect = (PKIWI_PROCESS_SIGNATURE_PROTECTION) (((ULONG_PTR) pProcess) + EPROCESS_OffSetTable[KiwiOsIndex][SignatureProtect]);
     pSignatureProtect->SignatureLevel = pInfos->SignatureProtection.SignatureLevel;
     pSignatureProtect->SectionSignatureLevel = pInfos->SignatureProtection.SectionSignatureLevel;
     if(KiwiOsIndex > KiwiOsIndex_8)
      pSignatureProtect->Protection = pInfos->SignatureProtection.Protection;
    }
    ObDereferenceObject(pProcess);
   }
  }
  else status = STATUS_INVALID_PARAMETER;
 }
 else status = STATUS_NOT_SUPPORTED;

 return status;
}
