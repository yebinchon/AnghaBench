
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dwServiceType; } ;
struct TYPE_9__ {int * lpImage; int * pSecurityDescriptor; TYPE_2__ Status; int bDeleted; scalar_t__ dwErrorControl; scalar_t__ dwTag; int dwStartType; TYPE_1__* lpGroup; int lpServiceName; int * lpDisplayName; } ;
struct TYPE_7__ {int lpGroupName; } ;
typedef TYPE_3__* PSERVICE ;
typedef int * LPWSTR ;
typedef int* LPCWSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int ASSERT (int ) ;
 int DPRINT (char*,...) ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int ,scalar_t__*) ;
 scalar_t__ SERVICE_FILE_SYSTEM_DRIVER ;
 scalar_t__ SERVICE_INTERACTIVE_PROCESS ;
 scalar_t__ SERVICE_KERNEL_DRIVER ;
 int SERVICE_WIN32 ;
 scalar_t__ SERVICE_WIN32_OWN_PROCESS ;
 scalar_t__ SERVICE_WIN32_SHARE_PROCESS ;
 scalar_t__ ScmCreateDefaultServiceSD (int **) ;
 scalar_t__ ScmCreateNewServiceRecord (int*,TYPE_3__**,scalar_t__,scalar_t__) ;
 int ScmGenerateServiceTag (TYPE_3__*) ;
 scalar_t__ ScmIsDeleteFlagSet (int ) ;
 scalar_t__ ScmReadSecurityDescriptor (int ,int **) ;
 scalar_t__ ScmReadString (int ,char*,int **) ;
 scalar_t__ ScmSetServiceGroup (TYPE_3__*,int *) ;
 scalar_t__ ScmWriteSecurityDescriptor (int ,int *) ;
 int TRUE ;

__attribute__((used)) static DWORD
CreateServiceListEntry(LPCWSTR lpServiceName,
                       HKEY hServiceKey)
{
    PSERVICE lpService = ((void*)0);
    LPWSTR lpDisplayName = ((void*)0);
    LPWSTR lpGroup = ((void*)0);
    DWORD dwSize;
    DWORD dwError;
    DWORD dwServiceType;
    DWORD dwStartType;
    DWORD dwErrorControl;
    DWORD dwTagId;

    DPRINT("Service: '%S'\n", lpServiceName);
    if (*lpServiceName == L'{')
        return ERROR_SUCCESS;

    dwSize = sizeof(DWORD);
    dwError = RegQueryValueExW(hServiceKey,
                               L"Type",
                               ((void*)0),
                               ((void*)0),
                               (LPBYTE)&dwServiceType,
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    if (((dwServiceType & ~SERVICE_INTERACTIVE_PROCESS) != SERVICE_WIN32_OWN_PROCESS) &&
        ((dwServiceType & ~SERVICE_INTERACTIVE_PROCESS) != SERVICE_WIN32_SHARE_PROCESS) &&
        (dwServiceType != SERVICE_KERNEL_DRIVER) &&
        (dwServiceType != SERVICE_FILE_SYSTEM_DRIVER))
        return ERROR_SUCCESS;

    DPRINT("Service type: %lx\n", dwServiceType);

    dwSize = sizeof(DWORD);
    dwError = RegQueryValueExW(hServiceKey,
                               L"Start",
                               ((void*)0),
                               ((void*)0),
                               (LPBYTE)&dwStartType,
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    DPRINT("Start type: %lx\n", dwStartType);

    dwSize = sizeof(DWORD);
    dwError = RegQueryValueExW(hServiceKey,
                               L"ErrorControl",
                               ((void*)0),
                               ((void*)0),
                               (LPBYTE)&dwErrorControl,
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    DPRINT("Error control: %lx\n", dwErrorControl);

    dwError = RegQueryValueExW(hServiceKey,
                               L"Tag",
                               ((void*)0),
                               ((void*)0),
                               (LPBYTE)&dwTagId,
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
        dwTagId = 0;

    DPRINT("Tag: %lx\n", dwTagId);

    dwError = ScmReadString(hServiceKey,
                            L"Group",
                            &lpGroup);
    if (dwError != ERROR_SUCCESS)
        lpGroup = ((void*)0);

    DPRINT("Group: %S\n", lpGroup);

    dwError = ScmReadString(hServiceKey,
                            L"DisplayName",
                            &lpDisplayName);
    if (dwError != ERROR_SUCCESS)
        lpDisplayName = ((void*)0);

    DPRINT("Display name: %S\n", lpDisplayName);

    dwError = ScmCreateNewServiceRecord(lpServiceName,
                                        &lpService,
                                        dwServiceType,
                                        dwStartType);
    if (dwError != ERROR_SUCCESS)
        goto done;

    lpService->dwErrorControl = dwErrorControl;
    lpService->dwTag = dwTagId;

    if (lpGroup != ((void*)0))
    {
        dwError = ScmSetServiceGroup(lpService, lpGroup);
        if (dwError != ERROR_SUCCESS)
            goto done;
    }

    if (lpDisplayName != ((void*)0))
    {
        lpService->lpDisplayName = lpDisplayName;
        lpDisplayName = ((void*)0);
    }

    DPRINT("ServiceName: '%S'\n", lpService->lpServiceName);
    if (lpService->lpGroup != ((void*)0))
    {
        DPRINT("Group: '%S'\n", lpService->lpGroup->lpGroupName);
    }
    DPRINT("Start %lx  Type %lx  Tag %lx  ErrorControl %lx\n",
           lpService->dwStartType,
           lpService->Status.dwServiceType,
           lpService->dwTag,
           lpService->dwErrorControl);

    if (ScmIsDeleteFlagSet(hServiceKey))
        lpService->bDeleted = TRUE;
    else
        ScmGenerateServiceTag(lpService);

    if (lpService->Status.dwServiceType & SERVICE_WIN32)
    {
        dwError = ScmReadSecurityDescriptor(hServiceKey,
                                            &lpService->pSecurityDescriptor);
        if (dwError != ERROR_SUCCESS)
            goto done;


        if (lpService->pSecurityDescriptor == ((void*)0))
        {
            DPRINT("No security descriptor found! Assign default security descriptor!\n");
            dwError = ScmCreateDefaultServiceSD(&lpService->pSecurityDescriptor);
            if (dwError != ERROR_SUCCESS)
                goto done;

            dwError = ScmWriteSecurityDescriptor(hServiceKey,
                                                 lpService->pSecurityDescriptor);
            if (dwError != ERROR_SUCCESS)
                goto done;
        }
    }

done:
    if (lpGroup != ((void*)0))
        HeapFree(GetProcessHeap(), 0, lpGroup);

    if (lpDisplayName != ((void*)0))
        HeapFree(GetProcessHeap(), 0, lpDisplayName);

    if (lpService != ((void*)0))
    {
        ASSERT(lpService->lpImage == ((void*)0));
    }

    return dwError;
}
