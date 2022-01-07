
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int * dwProcessId; } ;
typedef TYPE_1__ PROCESS_INFORMATION ;
typedef int * PCWCHAR ;
typedef int NTSTATUS ;


 int KULL_M_PROCESS_CREATE_NORMAL ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int kprintf (char*,int *) ;
 scalar_t__ kull_m_process_create (int ,int *,int ,int *,int ,int *,int *,int *,TYPE_1__*,int ) ;

NTSTATUS kuhl_m_process_start(int argc, wchar_t * argv[])
{
 PCWCHAR commandLine;
 PROCESS_INFORMATION informations;
 if(argc)
 {
  commandLine = argv[argc - 1];
  kprintf(L"Trying to start \"%s\" : ", commandLine);
  if(kull_m_process_create(KULL_M_PROCESS_CREATE_NORMAL, commandLine, 0, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), &informations, TRUE))
   kprintf(L"OK ! (PID %u)\n", informations.dwProcessId);
  else PRINT_ERROR_AUTO(L"kull_m_process_create");
 }
 return STATUS_SUCCESS;
}
