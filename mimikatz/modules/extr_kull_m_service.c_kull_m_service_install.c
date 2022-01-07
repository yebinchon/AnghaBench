
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SC_HANDLE ;
typedef int PCWSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int *) ;
 int * CreateService (int *,int ,int ,int,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;
 scalar_t__ ERROR_SERVICE_ALREADY_RUNNING ;
 scalar_t__ ERROR_SERVICE_DOES_NOT_EXIST ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int * OpenSCManager (int *,int ,int) ;
 int * OpenService (int *,int ,int) ;
 int PRINT_ERROR_AUTO (char*) ;
 int READ_CONTROL ;
 int SC_MANAGER_CONNECT ;
 int SC_MANAGER_CREATE_SERVICE ;
 int SERVICES_ACTIVE_DATABASE ;
 int SERVICE_ERROR_NORMAL ;
 int SERVICE_START ;
 scalar_t__ StartService (int *,int ,int *) ;
 int WRITE_DAC ;
 int kprintf (char*,int ) ;
 scalar_t__ kull_m_service_addWorldToSD (int *) ;

BOOL kull_m_service_install(PCWSTR serviceName, PCWSTR displayName, PCWSTR binPath, DWORD serviceType, DWORD startType, BOOL startIt)
{
 BOOL status = FALSE;
 SC_HANDLE hSC = ((void*)0), hS = ((void*)0);

 if(hSC = OpenSCManager(((void*)0), SERVICES_ACTIVE_DATABASE, SC_MANAGER_CONNECT | SC_MANAGER_CREATE_SERVICE))
 {
  if(hS = OpenService(hSC, serviceName, SERVICE_START))
  {
   kprintf(L"[+] \'%s\' service already registered\n", serviceName);
  }
  else
  {
   if(GetLastError() == ERROR_SERVICE_DOES_NOT_EXIST)
   {
    kprintf(L"[*] \'%s\' service not present\n", serviceName);
    if(hS = CreateService(hSC, serviceName, displayName, READ_CONTROL | WRITE_DAC | SERVICE_START, serviceType, startType, SERVICE_ERROR_NORMAL, binPath, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
    {
     kprintf(L"[+] \'%s\' service successfully registered\n", serviceName);
     if(status = kull_m_service_addWorldToSD(hS))
      kprintf(L"[+] \'%s\' service ACL to everyone\n", serviceName);
     else PRINT_ERROR_AUTO(L"kull_m_service_addWorldToSD");
    }
    else PRINT_ERROR_AUTO(L"CreateService");
   }
   else PRINT_ERROR_AUTO(L"OpenService");
  }
  if(hS)
  {
   if(startIt)
   {
    if(status = StartService(hS, 0, ((void*)0)))
     kprintf(L"[+] \'%s\' service started\n", serviceName);
    else if(GetLastError() == ERROR_SERVICE_ALREADY_RUNNING)
     kprintf(L"[*] \'%s\' service already started\n", serviceName);
    else PRINT_ERROR_AUTO(L"StartService");
   }
   CloseServiceHandle(hS);
  }
  CloseServiceHandle(hSC);
 }
 else PRINT_ERROR_AUTO(L"OpenSCManager(create)");
 return status;
}
