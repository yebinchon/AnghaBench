
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVICE_STATUS ;
typedef int LPCTSTR ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CloseServiceHandle (scalar_t__) ;
 scalar_t__ ControlService (scalar_t__,int ,int *) ;
 int DELETE ;
 int DeleteService (scalar_t__) ;
 int FALSE ;
 scalar_t__ OpenSCManager (int *,int *,int ) ;
 scalar_t__ OpenService (scalar_t__,int ,int) ;
 int SC_MANAGER_CREATE_SERVICE ;
 int SERVICE_CONTROL_STOP ;
 int SERVICE_START ;
 int SERVICE_STOP ;
 scalar_t__ StartService (scalar_t__,int ,int *) ;
 int TRUE ;
 int eprintf (char*) ;

BOOL StartStopService(LPCTSTR lpServiceName, BOOL bStop) {
 HANDLE hSCManager;
 HANDLE hService;
 SERVICE_STATUS ssStatus;
 BOOL ret = FALSE;
 hSCManager = OpenSCManager (((void*)0), ((void*)0), SC_MANAGER_CREATE_SERVICE);
 if (hSCManager) {
  hService = OpenService (hSCManager, lpServiceName, SERVICE_START | DELETE | SERVICE_STOP);
  if (hService) {
   if (!bStop) {
    if (StartService (hService, 0, ((void*)0))) {
     eprintf ("Service started [OK]\n");
     ret = TRUE;
    } else {
     eprintf ("Service started [FAIL]\n");
    }
   } else {
    if (ControlService (hService, SERVICE_CONTROL_STOP, &ssStatus)) {
     eprintf ("Service Stopped [OK]\n");
     ret = TRUE;
    } else {
     eprintf ("Service Stopped [FAIL]\n");
    }
   }
   CloseServiceHandle (hService);
   DeleteService (hService);
  }
  CloseServiceHandle (hSCManager);
 }
 return ret;
}
