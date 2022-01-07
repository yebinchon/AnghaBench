
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lpServiceName; scalar_t__ lpDisplayName; int ServiceStatus; } ;
typedef int * SC_HANDLE ;
typedef TYPE_1__* LPENUM_SERVICE_STATUS ;
typedef int LPCTSTR ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int *) ;
 int ERROR_OUTOFMEMORY ;
 int EnumDependentServices (int *,int ,TYPE_1__*,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int ,int ) ;
 int PrintServiceStatus (int *) ;
 int ReportLastError () ;
 int SC_MANAGER_CONNECT ;
 int SERVICE_ENUMERATE_DEPENDENTS ;
 int SERVICE_STATE_ALL ;
 int SetLastError (int ) ;
 scalar_t__ TRUE ;
 int _T (char*) ;
 int _tprintf (int ,...) ;

BOOL EnumDepend(LPCTSTR ServiceName)
{
    SC_HANDLE hManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    BOOL bResult = TRUE;
    DWORD BufferSize = 0;
    DWORD EntriesRead = 0;
    LPENUM_SERVICE_STATUS pBuffer = ((void*)0);
    DWORD i;

    hManager = OpenSCManager(((void*)0),
                             ((void*)0),
                             SC_MANAGER_CONNECT);
    if (hManager == ((void*)0))
    {
        _tprintf(_T("[SC] OpenSCManager FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    hService = OpenService(hManager, ServiceName, SERVICE_ENUMERATE_DEPENDENTS);
    if (hService == ((void*)0))
    {
        _tprintf(_T("[SC] OpenService FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    if (!EnumDependentServices(hService,
                               SERVICE_STATE_ALL,
                               ((void*)0),
                               0,
                               &BufferSize,
                               &EntriesRead))
    {
        if (BufferSize == 0)
        {
            _tprintf(_T("[SC] EnumDependentServices FAILED %lu:\n\n"), GetLastError());
            bResult = FALSE;
            goto done;
        }
    }

    pBuffer = HeapAlloc(GetProcessHeap(), 0, BufferSize);
    if (pBuffer == ((void*)0))
    {
        SetLastError(ERROR_OUTOFMEMORY);
        _tprintf(_T("[SC] HeapAlloc FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    if (!EnumDependentServices(hService,
                               SERVICE_STATE_ALL,
                               pBuffer,
                               BufferSize,
                               &BufferSize,
                               &EntriesRead))
    {
        _tprintf(_T("[SC] EnumDependentServices FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    _tprintf(_T("Enum: entriesRead = %lu\n"), EntriesRead);

    for (i = 0; i < EntriesRead; i++)
    {
        _tprintf(_T("\n"));
        _tprintf(_T("SERVICE_NAME: %s\n"), pBuffer[i].lpServiceName);
        _tprintf(_T("DISPLAY_NAME: %s\n"), pBuffer[i].lpDisplayName);
        PrintServiceStatus(&pBuffer[i].ServiceStatus);
    }

done:
    if (bResult == FALSE)
        ReportLastError();

    if (pBuffer != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pBuffer);

    if (hService)
        CloseServiceHandle(hService);

    if (hManager)
        CloseServiceHandle(hManager);

    return bResult;
}
