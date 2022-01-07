
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WSADATA ;
typedef char WCHAR ;
struct TYPE_3__ {char* lpName; } ;
typedef int PSERVICEINFO ;
typedef int INT ;
typedef int * HANDLE ;
typedef char* DWORD ;
typedef int BOOL ;


 int CloseHandle (int *) ;
 int * CreateThread (int *,int ,int ,TYPE_1__*,int ,char**) ;
 int FALSE ;
 int GetLastError () ;
 int INFINITE ;
 int LOG_ALL ;
 int LOG_FILE ;
 int LogEvent (char*,int ,int,int ) ;
 int MAKEWORD (int,int) ;
 int NUM_SERVICES ;
 int SERVICE_RUNNING ;
 TYPE_1__* Services ;
 int StartServer ;
 int TRUE ;
 int UpdateStatus (int ,int ,int) ;
 int WSACleanup () ;
 char* WSAStartup (int ,int *) ;
 int WaitForMultipleObjects (int,int **,int ,int ) ;
 int swprintf (char*,char*,char*) ;

__attribute__((used)) static BOOL
CreateServers(PSERVICEINFO pServInfo)
{
    DWORD dwThreadId[NUM_SERVICES];
    HANDLE hThread[NUM_SERVICES];
    WSADATA wsaData;
    WCHAR buf[256];
    INT i;
    DWORD RetVal;

    if ((RetVal = WSAStartup(MAKEWORD(2, 2), &wsaData)) != 0)
    {
        swprintf(buf, L"WSAStartup() failed : %lu\n", RetVal);
        LogEvent(buf, 0, 100, LOG_ALL);
        return FALSE;
    }

    UpdateStatus(pServInfo, 0, 1);

    LogEvent(L"\nCreating server Threads", 0, 0, LOG_FILE);


    for (i = 0; i < NUM_SERVICES; i++)
    {
        swprintf(buf, L"Creating thread for %s server", Services[i].lpName);
        LogEvent(buf, 0, 0, LOG_FILE);

        hThread[i] = CreateThread(((void*)0),
                                  0,
                                  StartServer,
                                  &Services[i],
                                  0,
                                  &dwThreadId[i]);

        if (hThread[i] == ((void*)0))
        {
            swprintf(buf, L"\nError creating %s server thread\n", Services[i].lpName);
            LogEvent(buf, GetLastError(), 0, LOG_ALL);
            return FALSE;
        }

        UpdateStatus(pServInfo, 0, 1);
    }

    LogEvent(L"Setting service status to running", 0, 0, LOG_FILE);
    UpdateStatus(pServInfo, SERVICE_RUNNING, 0);


    WaitForMultipleObjects(NUM_SERVICES, hThread, TRUE, INFINITE);

    for (i = 0; i < NUM_SERVICES; i++)
    {
        if (hThread[i] != ((void*)0))
            CloseHandle(hThread[i]);
    }

    LogEvent(L"Detaching Winsock2", 0, 0, LOG_FILE);
    WSACleanup();

    return TRUE;
}
