
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SC_HANDLE ;
typedef int LPWSTR ;
typedef int BOOL ;


 int CloseServiceHandle (int ) ;
 int FALSE ;
 int GetLastError () ;
 int OpenService (int ,int ,int ) ;
 int SERVICE_ALL_ACCESS ;
 int StartService (int ,int ,int *) ;
 int WaitForService (int ,int ) ;
 int logmsg (char*,int ,int ) ;

BOOL
StartAudioService(
    SC_HANDLE hSCManager,
    LPWSTR ServiceName,
    ULONG RetryCount)
{
    SC_HANDLE hService;
    BOOL ret;

    hService = OpenService(hSCManager, ServiceName, SERVICE_ALL_ACCESS);
    if (!hService)
    {
        logmsg("Failed to open service %S %x\n", ServiceName, GetLastError());
        return FALSE;
    }

    if (!StartService(hService, 0, ((void*)0)))
    {
        logmsg("Failed to start service %S %x\n", ServiceName, GetLastError());
        CloseServiceHandle(hService);
        return FALSE;
    }

    ret = WaitForService(hService, RetryCount);

    CloseServiceHandle(hService);
    return ret;
}
