
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UNICODE_STRING ;
typedef int PCWCHAR ;
typedef int NTSTATUS ;


 int RtlInitUnicodeString (int *,int ) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,int *) ;
 int kuhl_m_misc_lock_callback ;
 int kull_m_process_getProcessInformation (int ,int *) ;
 int kull_m_string_args_byName (int,int **,char*,int *,char*) ;

NTSTATUS kuhl_m_misc_lock(int argc, wchar_t * argv[])
{
 PCWCHAR process;
 UNICODE_STRING uProcess;
 kull_m_string_args_byName(argc, argv, L"process", &process, L"explorer.exe");
  RtlInitUnicodeString(&uProcess, process);
  kprintf(L"Proxy process : %wZ\n", &uProcess);
  kull_m_process_getProcessInformation(kuhl_m_misc_lock_callback, &uProcess);
 return STATUS_SUCCESS;
}
