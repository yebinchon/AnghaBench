
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {scalar_t__ lpDescription; } ;
typedef TYPE_1__ SERVICE_DESCRIPTIONW ;
typedef TYPE_1__ SERVICE_DESCRIPTION ;
typedef int * SC_HANDLE ;
typedef int * LPWSTR ;
typedef int * LPBYTE ;
typedef int DWORD ;


 int CloseServiceHandle (int *) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int GetError () ;
 scalar_t__ GetLastError () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int * OpenSCManagerW (int *,int *,int ) ;
 int * OpenServiceW (int *,int *,int ) ;
 int ProcessHeap ;
 scalar_t__ QueryServiceConfig2W (int *,int ,int *,int,int*) ;
 int SC_MANAGER_ENUMERATE_SERVICE ;
 int SERVICE_CONFIG_DESCRIPTION ;
 int SERVICE_QUERY_CONFIG ;
 int StringCchCopyW (int *,int,scalar_t__) ;
 int wcslen (scalar_t__) ;

LPWSTR
GetServiceDescription(LPWSTR lpServiceName)
{
    SC_HANDLE hSCManager = ((void*)0);
    SC_HANDLE hSc = ((void*)0);
    SERVICE_DESCRIPTIONW *pServiceDescription = ((void*)0);
    LPWSTR lpDescription = ((void*)0);
    DWORD BytesNeeded = 0;
    DWORD dwSize;

    hSCManager = OpenSCManagerW(((void*)0),
                                ((void*)0),
                                SC_MANAGER_ENUMERATE_SERVICE);
    if (hSCManager == ((void*)0))
    {
        GetError();
        return ((void*)0);
    }

    hSc = OpenServiceW(hSCManager,
                       lpServiceName,
                       SERVICE_QUERY_CONFIG);
    if (hSc)
    {
        if (!QueryServiceConfig2W(hSc,
                                  SERVICE_CONFIG_DESCRIPTION,
                                  ((void*)0),
                                  0,
                                  &BytesNeeded))
        {
            if (GetLastError() == ERROR_INSUFFICIENT_BUFFER)
            {
                pServiceDescription = (SERVICE_DESCRIPTION *) HeapAlloc(ProcessHeap,
                                                                        0,
                                                                        BytesNeeded);
                if (pServiceDescription == ((void*)0))
                    goto cleanup;

                if (QueryServiceConfig2W(hSc,
                                         SERVICE_CONFIG_DESCRIPTION,
                                         (LPBYTE)pServiceDescription,
                                         BytesNeeded,
                                         &BytesNeeded))
                {
                    if (pServiceDescription->lpDescription)
                    {
                        dwSize = wcslen(pServiceDescription->lpDescription) + 1;
                        lpDescription = HeapAlloc(ProcessHeap,
                                                  0,
                                                  dwSize * sizeof(WCHAR));
                        if (lpDescription)
                        {
                            StringCchCopyW(lpDescription,
                                           dwSize,
                                           pServiceDescription->lpDescription);
                        }
                    }
                }
            }
        }
    }

cleanup:
    if (pServiceDescription)
        HeapFree(ProcessHeap,
                 0,
                 pServiceDescription);
    if (hSCManager != ((void*)0))
        CloseServiceHandle(hSCManager);
    if (hSc != ((void*)0))
        CloseServiceHandle(hSc);

    return lpDescription;
}
