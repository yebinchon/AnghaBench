
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int SC_HANDLE ;
typedef int DWORD ;


 int CloseServiceHandle (int ) ;
 int CreateServiceW (int ,char const*,char const*,int ,int ,int ,int ,char*,int *,int *,int *,int *,int *) ;
 scalar_t__ ERROR_SERVICE_EXISTS ;
 int GENERIC_ALL ;
 scalar_t__ GetLastError () ;
 int GetSystemDirectoryW (char*,int ) ;
 int MAX_PATH ;
 int OpenSCManagerW (int *,int ,int ) ;
 int SC_MANAGER_CREATE_SERVICE ;
 int SERVICES_ACTIVE_DATABASEW ;
 int SERVICE_DEMAND_START ;
 int SERVICE_ERROR_NORMAL ;
 int SERVICE_WIN32_SHARE_PROCESS ;
 int fprintf (int ,char*) ;
 int lstrcpyW (char*,char const*) ;
 int stderr ;

__attribute__((used)) static DWORD DoRegServer(void)
{
    static const WCHAR msiserverW[] = {'M','S','I','S','e','r','v','e','r',0};
    static const WCHAR msiexecW[] = {'\\','m','s','i','e','x','e','c',' ','/','V',0};
    SC_HANDLE scm, service;
    WCHAR path[MAX_PATH+12];
    DWORD len, ret = 0;

    if (!(scm = OpenSCManagerW(((void*)0), SERVICES_ACTIVE_DATABASEW, SC_MANAGER_CREATE_SERVICE)))
    {
        fprintf(stderr, "Failed to open the service control manager.\n");
        return 1;
    }
    len = GetSystemDirectoryW(path, MAX_PATH);
    lstrcpyW(path + len, msiexecW);
    if ((service = CreateServiceW(scm, msiserverW, msiserverW, GENERIC_ALL,
                                  SERVICE_WIN32_SHARE_PROCESS, SERVICE_DEMAND_START,
                                  SERVICE_ERROR_NORMAL, path, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0))))
    {
        CloseServiceHandle(service);
    }
    else if (GetLastError() != ERROR_SERVICE_EXISTS)
    {
        fprintf(stderr, "Failed to create MSI service\n");
        ret = 1;
    }
    CloseServiceHandle(scm);
    return ret;
}
