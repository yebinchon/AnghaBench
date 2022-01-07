
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SC_HANDLE ;
typedef int PCWSTR ;
typedef int BOOL ;


 int CloseServiceHandle (int ) ;
 int FALSE ;
 int OpenSCManager (int *,int ,int ) ;
 int OpenService (int ,int ,int ) ;
 int SC_MANAGER_CONNECT ;
 int SERVICES_ACTIVE_DATABASE ;
 int SERVICE_START ;
 int StartService (int ,int ,int *) ;

BOOL kull_m_service_start(PCWSTR serviceName)
{
 BOOL status = FALSE;
 SC_HANDLE hSC, hS;

 if(hSC = OpenSCManager(((void*)0), SERVICES_ACTIVE_DATABASE, SC_MANAGER_CONNECT))
 {
  if(hS = OpenService(hSC, serviceName, SERVICE_START))
  {
   status = StartService(hS, 0, ((void*)0));
   CloseServiceHandle(hS);
  }
  CloseServiceHandle(hSC);
 }
 return status;
}
