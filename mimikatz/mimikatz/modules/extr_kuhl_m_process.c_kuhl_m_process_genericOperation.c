
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef char* PCWCHAR ;
typedef int NTSTATUS ;
typedef int KUHL_M_PROCESS_GENERICOPERATION ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int FALSE ;



 scalar_t__ NT_SUCCESS (int ) ;
 int NtResumeProcess (int ) ;
 int NtSuspendProcess (int ) ;
 int NtTerminateProcess (int ,int ) ;
 int OpenProcess (scalar_t__,int ,scalar_t__) ;
 int PRINT_ERROR (char*,...) ;
 int PRINT_ERROR_AUTO (char*) ;
 scalar_t__ PROCESS_SUSPEND_RESUME ;
 scalar_t__ PROCESS_TERMINATE ;
 int STATUS_NOT_FOUND ;
 int STATUS_SUCCESS ;
 int kprintf (char*,char*,scalar_t__) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,char**,int *) ;
 scalar_t__ wcstoul (char*,int *,int ) ;

NTSTATUS kuhl_m_process_genericOperation(int argc, wchar_t * argv[], KUHL_M_PROCESS_GENERICOPERATION operation)
{
 HANDLE hProcess;
 NTSTATUS status = STATUS_NOT_FOUND;
 DWORD pid = 0, access;
 PCWCHAR szPid, szText;

 switch(operation)
 {
 case 128:
  access = PROCESS_TERMINATE;
  szText = L"NtTerminateProcess";
  break;
 case 129:
  access = PROCESS_SUSPEND_RESUME;
  szText = L"NtSuspendProcess";
  break;
 case 130:
  access = PROCESS_SUSPEND_RESUME;
  szText = L"NtResumeProcess";
  break;
 default:
  return status;
 }

 if(kull_m_string_args_byName(argc, argv, L"pid", &szPid, ((void*)0)))
  pid = wcstoul(szPid, ((void*)0), 0);

 if(pid)
 {
  if(hProcess = OpenProcess(access, FALSE, pid))
  {
   switch(operation)
   {
   case 128:
    status = NtTerminateProcess(hProcess, STATUS_SUCCESS);
    break;
   case 129:
    status = NtSuspendProcess(hProcess);
    break;
   case 130:
    status = NtResumeProcess(hProcess);
    break;
   }

   if(NT_SUCCESS(status))
    kprintf(L"%s of %u PID : OK !\n", szText, pid);
   else PRINT_ERROR(L"%s 0x%08x\n", szText, status);
   CloseHandle(hProcess);
  }
  else PRINT_ERROR_AUTO(L"OpenProcess");
 }
 else PRINT_ERROR(L"pid (/pid:123) is missing");
 return status;
}
