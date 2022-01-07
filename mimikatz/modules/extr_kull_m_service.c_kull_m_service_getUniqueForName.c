
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVICE_STATUS_PROCESS ;
typedef int SC_HANDLE ;
typedef int PCWSTR ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CloseServiceHandle (int ) ;
 int FALSE ;
 int OpenSCManager (int *,int ,int ) ;
 int OpenService (int ,int ,int ) ;
 int QueryServiceStatusEx (int ,int ,int *,int,int *) ;
 int SC_MANAGER_CONNECT ;
 int SC_STATUS_PROCESS_INFO ;
 int SERVICES_ACTIVE_DATABASE ;
 int SERVICE_QUERY_STATUS ;

BOOL kull_m_service_getUniqueForName(PCWSTR serviceName, SERVICE_STATUS_PROCESS * pServiceStatusProcess)
{
 BOOL status = FALSE;
 SC_HANDLE hSC, hS;
 DWORD szNeeded;

 if(hSC = OpenSCManager(((void*)0), SERVICES_ACTIVE_DATABASE, SC_MANAGER_CONNECT))
 {
  if(hS = OpenService(hSC, serviceName, SERVICE_QUERY_STATUS))
  {
   status = QueryServiceStatusEx(hS, SC_STATUS_PROCESS_INFO, (BYTE *) pServiceStatusProcess, sizeof(SERVICE_STATUS_PROCESS), &szNeeded);
   CloseServiceHandle(hS);
  }
  CloseServiceHandle(hSC);
 }
 return status;
}
