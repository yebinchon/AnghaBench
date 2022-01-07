
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int SC_HANDLE ;
typedef int DWORD ;


 int CloseServiceHandle (int ) ;
 int DELETE ;
 int DeleteService (int ) ;
 scalar_t__ ERROR_SERVICE_DOES_NOT_EXIST ;
 scalar_t__ GetLastError () ;
 int OpenSCManagerW (int *,int ,int ) ;
 int OpenServiceW (int ,char const*,int ) ;
 int SC_MANAGER_CONNECT ;
 int SERVICES_ACTIVE_DATABASEW ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static DWORD DoUnregServer(void)
{
    static const WCHAR msiserverW[] = {'M','S','I','S','e','r','v','e','r',0};
    SC_HANDLE scm, service;
    DWORD ret = 0;

    if (!(scm = OpenSCManagerW(((void*)0), SERVICES_ACTIVE_DATABASEW, SC_MANAGER_CONNECT)))
    {
        fprintf(stderr, "Failed to open service control manager\n");
        return 1;
    }
    if ((service = OpenServiceW(scm, msiserverW, DELETE)))
    {
        if (!DeleteService(service))
        {
            fprintf(stderr, "Failed to delete MSI service\n");
            ret = 1;
        }
        CloseServiceHandle(service);
    }
    else if (GetLastError() != ERROR_SERVICE_DOES_NOT_EXIST)
    {
        fprintf(stderr, "Failed to open MSI service\n");
        ret = 1;
    }
    CloseServiceHandle(scm);
    return ret;
}
