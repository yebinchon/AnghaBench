
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;
typedef int LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_LOGON_FAILURE ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ LOGONID_CURRENT ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int SERVERHANDLE_CURRENT ;
 int STATUS_SUCCESS ;
 scalar_t__ WinStationConnectW (int ,scalar_t__,scalar_t__,int ,int ) ;
 int kprintf (char*,...) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,scalar_t__*,char*) ;
 scalar_t__ wcstoul (scalar_t__,int *,int ) ;

NTSTATUS kuhl_m_ts_remote(int argc, wchar_t * argv[])
{
 LPCWSTR szId, szPassword;
 DWORD id, target;
 if(kull_m_string_args_byName(argc, argv, L"id", &szId, ((void*)0)))
 {
  id = wcstoul(szId, ((void*)0), 0);
  if(kull_m_string_args_byName(argc, argv, L"target", &szId, ((void*)0)))
   target = wcstoul(szId, ((void*)0), 0);
  else target = LOGONID_CURRENT;

  kull_m_string_args_byName(argc, argv, L"password", &szPassword, L"");

  kprintf(L"Asking to connect from %u to ", id);
  if(target == LOGONID_CURRENT)
   kprintf(L"current session");
  else kprintf(L"%u", target);

  kprintf(L"\n\n> ");
  if(WinStationConnectW(SERVERHANDLE_CURRENT, id, target, (LPWSTR) szPassword, FALSE))
   kprintf(L"Connected to %u\n", id);
  else if(GetLastError() == ERROR_LOGON_FAILURE)
   PRINT_ERROR(L"Bad password for this session (take care to not lock the account!)\n");
  else PRINT_ERROR_AUTO(L"WinStationConnect");
 }
 else PRINT_ERROR(L"Argument id is needed\n");
 return STATUS_SUCCESS;
}
