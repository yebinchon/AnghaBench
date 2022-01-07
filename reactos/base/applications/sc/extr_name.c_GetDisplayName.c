
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int * SC_HANDLE ;
typedef int * LPTSTR ;
typedef int LPCTSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int *) ;
 int ERROR_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 int * GetLastError () ;
 int GetProcessHeap () ;
 int GetServiceDisplayName (int *,int ,int *,int*) ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int * OpenSCManager (int *,int *,int ) ;
 int ReportLastError () ;
 int SC_MANAGER_CONNECT ;
 int SetLastError (int ) ;
 scalar_t__ TRUE ;
 int _T (char*) ;
 int _tprintf (int ,int *) ;

BOOL GetDisplayName(LPCTSTR ServiceName)
{
    SC_HANDLE hManager = ((void*)0);
    BOOL bResult = TRUE;
    DWORD BufferSize = 0;
    LPTSTR pBuffer = ((void*)0);

    hManager = OpenSCManager(((void*)0),
                             ((void*)0),
                             SC_MANAGER_CONNECT);
    if (hManager == ((void*)0))
    {
        _tprintf(_T("[SC] OpenSCManager FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    if (!GetServiceDisplayName(hManager,
                               ServiceName,
                               ((void*)0),
                               &BufferSize))
    {
        if (BufferSize == 0)
        {
            _tprintf(_T("[SC] GetServiceDisplayName FAILED %lu:\n\n"), GetLastError());
            bResult = FALSE;
            goto done;
        }
    }

    pBuffer = HeapAlloc(GetProcessHeap(), 0, (BufferSize + 1) * sizeof(TCHAR));
    if (pBuffer == ((void*)0))
    {
        SetLastError(ERROR_OUTOFMEMORY);
        _tprintf(_T("[SC] HeapAlloc FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    BufferSize++;
    if (!GetServiceDisplayName(hManager,
                               ServiceName,
                               pBuffer,
                               &BufferSize))
    {
        _tprintf(_T("[SC] GetServiceDisplayName FAILED %lu:\n\n"), GetLastError());
        bResult = FALSE;
        goto done;
    }

    _tprintf(_T("[SC] GetServiceDisplayName SUCCESS  Name = %s\n"), pBuffer);

done:
    if (bResult == FALSE)
        ReportLastError();

    if (pBuffer != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pBuffer);

    if (hManager)
        CloseServiceHandle(hManager);

    return bResult;
}
