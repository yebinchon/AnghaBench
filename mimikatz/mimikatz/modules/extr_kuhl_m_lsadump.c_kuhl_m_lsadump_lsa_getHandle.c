
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwProcessId; } ;
typedef TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef int PKULL_M_MEMORY_HANDLE ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int FALSE ;
 int KULL_M_MEMORY_TYPE_PROCESS ;
 int OpenProcess (int ,int ,int ) ;
 int PRINT_ERROR_AUTO (char*) ;
 int kull_m_memory_open (int ,int ,int *) ;
 scalar_t__ kull_m_service_getUniqueForName (char*,TYPE_1__*) ;

BOOL kuhl_m_lsadump_lsa_getHandle(PKULL_M_MEMORY_HANDLE * hMemory, DWORD Flags)
{
 BOOL success = FALSE;
 SERVICE_STATUS_PROCESS ServiceStatusProcess;
 HANDLE hProcess;

 if(kull_m_service_getUniqueForName(L"SamSs", &ServiceStatusProcess))
 {
  if(hProcess = OpenProcess(Flags, FALSE, ServiceStatusProcess.dwProcessId))
  {
   if(!(success = kull_m_memory_open(KULL_M_MEMORY_TYPE_PROCESS, hProcess, hMemory)))
    CloseHandle(hProcess);
  }
  else PRINT_ERROR_AUTO(L"OpenProcess");
 }
 else PRINT_ERROR_AUTO(L"kull_m_service_getUniqueForName");
 return success;
}
