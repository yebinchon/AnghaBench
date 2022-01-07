
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PCWCHAR ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int DWORD ;


 scalar_t__ ClearEventLog (int ,int *) ;
 scalar_t__ GetNumberOfEventLogRecords (int ,int *) ;
 int OpenEventLog (int *,int ) ;
 int PRINT_ERROR_AUTO (char*) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kull_m_string_args_byName (int,int **,char*,int *,char*) ;

NTSTATUS kuhl_m_event_clear(int argc, wchar_t * argv[])
{
 HANDLE hEventLog;
 PCWCHAR szLog;
 DWORD nbEvents;
 kull_m_string_args_byName(argc, argv, L"log", &szLog, L"Security");

 kprintf(L"Using \"%s\" event log :\n", szLog);
 if(hEventLog = OpenEventLog(((void*)0), szLog))
 {
  if(GetNumberOfEventLogRecords(hEventLog, &nbEvents))
   kprintf(L"- %u event(s)\n", nbEvents);
  if(ClearEventLog(hEventLog, ((void*)0)))
   kprintf(L"- Cleared !\n");
  else PRINT_ERROR_AUTO(L"ClearEventLog");
  if(GetNumberOfEventLogRecords(hEventLog, &nbEvents))
   kprintf(L"- %u event(s)\n", nbEvents);
 }
 else PRINT_ERROR_AUTO(L"OpenEventLog");

 return STATUS_SUCCESS;
}
