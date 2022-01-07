
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int LPCTSTR ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CloseServiceHandle (scalar_t__) ;
 scalar_t__ CreateService (scalar_t__,int ,int ,int,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;
 int DELETE ;
 int FALSE ;
 scalar_t__ OpenSCManager (int *,int *,int ) ;
 int SC_MANAGER_CREATE_SERVICE ;
 int SERVICE_DEMAND_START ;
 int SERVICE_ERROR_IGNORE ;
 int SERVICE_KERNEL_DRIVER ;
 int SERVICE_START ;
 int SERVICE_STOP ;
 int TRUE ;
 int free (int ) ;
 int r_sys_conv_utf8_to_win (char const*) ;

__attribute__((used)) static BOOL InstallService(const char * rutaDriver, LPCTSTR lpServiceName, LPCTSTR lpDisplayName) {
 HANDLE hService;
 BOOL ret = FALSE;
 HANDLE hSCManager = OpenSCManager (((void*)0), ((void*)0), SC_MANAGER_CREATE_SERVICE);
 if (hSCManager) {
  LPTSTR rutaDriver_ = r_sys_conv_utf8_to_win (rutaDriver);
  hService = CreateService (hSCManager, lpServiceName, lpDisplayName, SERVICE_START | DELETE | SERVICE_STOP, SERVICE_KERNEL_DRIVER, SERVICE_DEMAND_START, SERVICE_ERROR_IGNORE, rutaDriver_, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
  if (hService) {
   CloseServiceHandle (hService);
   ret = TRUE;
  }
  free (rutaDriver_);
  CloseServiceHandle (hSCManager);
 }
 return ret;
}
