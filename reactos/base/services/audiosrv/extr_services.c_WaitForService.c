
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_2__ {scalar_t__ dwCurrentState; } ;
typedef TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef int SC_HANDLE ;
typedef int LPBYTE ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int GetLastError () ;
 int QueryServiceStatusEx (int ,int ,int ,int,int *) ;
 int SC_STATUS_PROCESS_INFO ;
 scalar_t__ SERVICE_RUNNING ;
 int Sleep (int) ;
 int TRUE ;
 int logmsg (char*,int ) ;

BOOL
WaitForService(
    SC_HANDLE hService,
    ULONG RetryCount)
{
    ULONG Index = 0;
    DWORD dwSize;
    SERVICE_STATUS_PROCESS Info;

    do
    {
        if (!QueryServiceStatusEx(hService, SC_STATUS_PROCESS_INFO, (LPBYTE)&Info, sizeof(SERVICE_STATUS_PROCESS), &dwSize))
        {
            logmsg("QueryServiceStatusEx failed %x\n", GetLastError());
            break;
        }

        if (Info.dwCurrentState == SERVICE_RUNNING)
            return TRUE;

        Sleep(1000);

    } while (Index++ < RetryCount);

    logmsg("Timeout while waiting for service to become ready %p\n", hService);

    return FALSE;
}
