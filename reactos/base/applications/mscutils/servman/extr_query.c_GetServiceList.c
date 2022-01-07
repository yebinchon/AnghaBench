
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {int ServiceStatusProcess; void* lpDisplayName; void* lpServiceName; } ;
struct TYPE_6__ {int NumServices; TYPE_2__* pAllServices; } ;
typedef int SERVICE_STATUS_PROCESS ;
typedef int * SC_HANDLE ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef int * LPBYTE ;
typedef TYPE_2__ ENUM_SERVICE_STATUS_PROCESS ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseServiceHandle (int *) ;
 int CopyMemory (int *,int *,int) ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ EnumServicesStatusEx (int *,int ,int ,int ,int *,int,int*,int*,int*,int ) ;
 int FALSE ;
 int FreeServiceList (TYPE_1__*) ;
 scalar_t__ GetLastError () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int * OpenSCManagerW (int *,int *,int ) ;
 int ProcessHeap ;
 int SC_ENUM_PROCESS_INFO ;
 int SC_MANAGER_ENUMERATE_SERVICE ;
 int SERVICE_STATE_ALL ;
 int SERVICE_WIN32 ;
 int TRUE ;
 int wcscpy (void*,void*) ;
 int wcslen (void*) ;

BOOL
GetServiceList(PMAIN_WND_INFO Info)
{
    ENUM_SERVICE_STATUS_PROCESS *pServices = ((void*)0);
    SC_HANDLE ScHandle;
    BOOL bRet = FALSE;

    DWORD BytesNeeded = 0;
    DWORD ResumeHandle = 0;
    DWORD NumServices = 0;
    DWORD i;

    FreeServiceList(Info);

    ScHandle = OpenSCManagerW(((void*)0),
                              ((void*)0),
                              SC_MANAGER_ENUMERATE_SERVICE);
    if (ScHandle != ((void*)0))
    {
        if (!EnumServicesStatusEx(ScHandle,
                                  SC_ENUM_PROCESS_INFO,
                                  SERVICE_WIN32,
                                  SERVICE_STATE_ALL,
                                  ((void*)0),
                                  0,
                                  &BytesNeeded,
                                  &NumServices,
                                  &ResumeHandle,
                                  0))
        {

            if (GetLastError() == ERROR_MORE_DATA)
            {

                pServices = (ENUM_SERVICE_STATUS_PROCESS *)HeapAlloc(ProcessHeap,
                                                                     0,
                                                                     BytesNeeded);
                if (pServices)
                {

                    if (EnumServicesStatusEx(ScHandle,
                                             SC_ENUM_PROCESS_INFO,
                                             SERVICE_WIN32,
                                             SERVICE_STATE_ALL,
                                             (LPBYTE)pServices,
                                             BytesNeeded,
                                             &BytesNeeded,
                                             &NumServices,
                                             &ResumeHandle,
                                             0))
                    {
                        bRet = TRUE;
                    }
                }
            }
        }
    }

    if (ScHandle)
        CloseServiceHandle(ScHandle);

    Info->pAllServices = (ENUM_SERVICE_STATUS_PROCESS *)HeapAlloc(ProcessHeap,
                                                                  HEAP_ZERO_MEMORY,
                                                                  NumServices * sizeof(ENUM_SERVICE_STATUS_PROCESS));
    if (Info->pAllServices != ((void*)0))
    {
        Info->NumServices = NumServices;

        for (i = 0; i < NumServices; i++)
        {
            Info->pAllServices[i].lpServiceName = HeapAlloc(ProcessHeap,
                                                            HEAP_ZERO_MEMORY,
                                                            (wcslen(pServices[i].lpServiceName) + 1) * sizeof(WCHAR));
            if (Info->pAllServices[i].lpServiceName)
                wcscpy(Info->pAllServices[i].lpServiceName, pServices[i].lpServiceName);

            Info->pAllServices[i].lpDisplayName = HeapAlloc(ProcessHeap,
                                                            HEAP_ZERO_MEMORY,
                                                            (wcslen(pServices[i].lpDisplayName) + 1) * sizeof(WCHAR));
            if (Info->pAllServices[i].lpDisplayName)
                wcscpy(Info->pAllServices[i].lpDisplayName, pServices[i].lpDisplayName);

            CopyMemory(&Info->pAllServices[i].ServiceStatusProcess,
                       &pServices[i].ServiceStatusProcess,
                       sizeof(SERVICE_STATUS_PROCESS));
        }
    }

    if (pServices)
        HeapFree(ProcessHeap, 0, pServices);

    return bRet;
}
