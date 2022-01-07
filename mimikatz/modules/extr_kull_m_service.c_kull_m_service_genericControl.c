
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVICE_STATUS ;
typedef int SC_HANDLE ;
typedef int PCWSTR ;
typedef int * LPSERVICE_STATUS ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseServiceHandle (int ) ;
 int ControlService (int ,int ,int *) ;
 int FALSE ;
 int OpenSCManager (int *,int ,int ) ;
 int OpenService (int ,int ,int ) ;
 int SC_MANAGER_CONNECT ;
 int SERVICES_ACTIVE_DATABASE ;

BOOL kull_m_service_genericControl(PCWSTR serviceName, DWORD dwDesiredAccess, DWORD dwControl, LPSERVICE_STATUS ptrServiceStatus)
{
 BOOL status = FALSE;
 SC_HANDLE hSC, hS;
 SERVICE_STATUS serviceStatus;

 if(hSC = OpenSCManager(((void*)0), SERVICES_ACTIVE_DATABASE, SC_MANAGER_CONNECT))
 {
  if(hS = OpenService(hSC, serviceName, dwDesiredAccess))
  {
   status = ControlService(hS, dwControl, ptrServiceStatus ? ptrServiceStatus : &serviceStatus);
   CloseServiceHandle(hS);
  }
  CloseServiceHandle(hSC);
 }
 return status;
}
