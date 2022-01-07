
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCTSTR ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CloseServiceHandle (scalar_t__) ;
 int DELETE ;
 int DeleteService (scalar_t__) ;
 int FALSE ;
 scalar_t__ OpenSCManager (int *,int *,int ) ;
 scalar_t__ OpenService (scalar_t__,int ,int) ;
 int SC_MANAGER_CREATE_SERVICE ;
 int SERVICE_START ;
 int SERVICE_STOP ;
 int TRUE ;

__attribute__((used)) static BOOL RemoveService(LPCTSTR lpServiceName) {
 HANDLE hService;
 BOOL ret = FALSE;
 HANDLE hSCManager = OpenSCManager (((void*)0), ((void*)0), SC_MANAGER_CREATE_SERVICE);
 if (hSCManager) {
  hService = OpenService (hSCManager, lpServiceName, SERVICE_START | DELETE | SERVICE_STOP);
  if (hService) {
   DeleteService (hService);
   CloseServiceHandle (hService);
   ret = TRUE;
  }
  CloseServiceHandle (hSCManager);
 }
 return ret;
}
