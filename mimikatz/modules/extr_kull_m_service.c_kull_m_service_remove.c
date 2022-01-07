
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SC_HANDLE ;
typedef int PCWSTR ;
typedef int BOOL ;


 int CloseServiceHandle (int ) ;
 int DELETE ;
 int DeleteService (int ) ;
 int FALSE ;
 int OpenSCManager (int *,int ,int ) ;
 int OpenService (int ,int ,int ) ;
 int SC_MANAGER_CONNECT ;
 int SERVICES_ACTIVE_DATABASE ;

BOOL kull_m_service_remove(PCWSTR serviceName)
{
 BOOL status = FALSE;
 SC_HANDLE hSC, hS;

 if(hSC = OpenSCManager(((void*)0), SERVICES_ACTIVE_DATABASE, SC_MANAGER_CONNECT))
 {
  if(hS = OpenService(hSC, serviceName, DELETE))
  {
   status = DeleteService(hS);
   CloseServiceHandle(hS);
  }
  CloseServiceHandle(hSC);
 }
 return status;
}
