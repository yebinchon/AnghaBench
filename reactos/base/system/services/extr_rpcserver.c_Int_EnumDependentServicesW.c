
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {scalar_t__ dwCurrentState; } ;
struct TYPE_7__ {int * lpDisplayName; int * lpServiceName; TYPE_1__ Status; } ;
typedef int SERVICE_STATUS ;
typedef int PVOID ;
typedef TYPE_2__* PSERVICE ;
typedef scalar_t__* LPDWORD ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int DPRINT (char*) ;
 scalar_t__ ERROR_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKeyW (int ,int *,int *,int *,scalar_t__*,int *,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int ,scalar_t__*) ;
 scalar_t__ SERVICE_ACTIVE ;
 scalar_t__ SERVICE_INACTIVE ;
 scalar_t__ SERVICE_STATE_ALL ;
 scalar_t__ SERVICE_STOPPED ;
 TYPE_2__* ScmGetServiceEntryByName (int *) ;
 scalar_t__ _wcsicmp (int *,int *) ;
 int wcslen (int *) ;

__attribute__((used)) static DWORD
Int_EnumDependentServicesW(HKEY hServicesKey,
                           PSERVICE lpService,
                           DWORD dwServiceState,
                           PSERVICE *lpServices,
                           LPDWORD pcbBytesNeeded,
                           LPDWORD lpServicesReturned)
{
    DWORD dwError = ERROR_SUCCESS;
    WCHAR szNameBuf[MAX_PATH];
    WCHAR szValueBuf[MAX_PATH];
    WCHAR *lpszNameBuf = szNameBuf;
    WCHAR *lpszValueBuf = szValueBuf;
    DWORD dwSize;
    DWORD dwNumSubKeys;
    DWORD dwIteration;
    PSERVICE lpCurrentService;
    HKEY hServiceEnumKey;
    DWORD dwCurrentServiceState = SERVICE_ACTIVE;
    DWORD dwDependServiceStrPtr = 0;
    DWORD dwRequiredSize = 0;


    dwError = RegQueryInfoKeyW(hServicesKey,
                               ((void*)0),
                               ((void*)0),
                               ((void*)0),
                               &dwNumSubKeys,
                               ((void*)0),
                               ((void*)0),
                               ((void*)0),
                               ((void*)0),
                               ((void*)0),
                               ((void*)0),
                               ((void*)0));
    if (dwError != ERROR_SUCCESS)
    {
        DPRINT("ERROR! Unable to get number of services keys.\n");
        return dwError;
    }


    for (dwIteration = 0; dwIteration < dwNumSubKeys; dwIteration++)
    {
        dwSize = MAX_PATH;
        dwError = RegEnumKeyExW(hServicesKey,
                                dwIteration,
                                lpszNameBuf,
                                &dwSize,
                                ((void*)0),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0));
        if (dwError != ERROR_SUCCESS)
            return dwError;


        dwError = RegOpenKeyExW(hServicesKey,
                                lpszNameBuf,
                                0,
                                KEY_READ,
                                &hServiceEnumKey);
        if (dwError != ERROR_SUCCESS)
            return dwError;

        dwSize = MAX_PATH * sizeof(WCHAR);


        dwError = RegQueryValueExW(hServiceEnumKey,
                                   L"DependOnService",
                                   ((void*)0),
                                   ((void*)0),
                                   (LPBYTE)lpszValueBuf,
                                   &dwSize);




        if (dwError == ERROR_SUCCESS)
        {
            dwDependServiceStrPtr = 0;


            while (wcslen(lpszValueBuf + dwDependServiceStrPtr) > 0)
            {
                if (_wcsicmp(lpszValueBuf + dwDependServiceStrPtr, lpService->lpServiceName) == 0)
                {

                    lpCurrentService = ScmGetServiceEntryByName(lpszNameBuf);


                    if (!lpCurrentService)
                    {

                        DPRINT("This should not happen at this point, report to Developer\n");
                        return ERROR_NOT_FOUND;
                    }


                    if (lpCurrentService->Status.dwCurrentState == SERVICE_STOPPED)
                        dwCurrentServiceState = SERVICE_INACTIVE;


                    if ((dwCurrentServiceState == dwServiceState) ||
                        (dwServiceState == SERVICE_STATE_ALL))
                    {

                        dwRequiredSize += sizeof(SERVICE_STATUS);
                        dwRequiredSize += (DWORD)((wcslen(lpCurrentService->lpServiceName) + 1) * sizeof(WCHAR));
                        dwRequiredSize += (DWORD)((wcslen(lpCurrentService->lpDisplayName) + 1) * sizeof(WCHAR));


                        dwRequiredSize += (2 * sizeof(PVOID));


                        *pcbBytesNeeded = *pcbBytesNeeded + dwRequiredSize;





                        Int_EnumDependentServicesW(hServicesKey,
                                                   lpCurrentService,
                                                   dwServiceState,
                                                   lpServices,
                                                   pcbBytesNeeded,
                                                   lpServicesReturned);


                        if (lpServices)
                            lpServices[*lpServicesReturned] = lpCurrentService;

                        *lpServicesReturned = *lpServicesReturned + 1;
                    }
                }

                dwDependServiceStrPtr += (DWORD)(wcslen(lpszValueBuf + dwDependServiceStrPtr) + 1);
            }
        }
        else if (*pcbBytesNeeded)
        {
            dwError = ERROR_SUCCESS;
        }

        RegCloseKey(hServiceEnumKey);
    }

    return dwError;
}
