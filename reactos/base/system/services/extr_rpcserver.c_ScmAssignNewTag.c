
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pdwGroupTags ;
struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_8__ {scalar_t__ dwTag; int lpServiceName; TYPE_1__* lpGroup; TYPE_3__ ServiceListEntry; } ;
struct TYPE_7__ {int szGroupName; } ;
typedef TYPE_2__* PSERVICE ;
typedef TYPE_3__* PLIST_ENTRY ;
typedef scalar_t__* PDWORD ;
typedef int * LPBYTE ;
typedef int INT ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOLEAN ;


 int ASSERT (int ) ;
 TYPE_2__* CONTAINING_RECORD (TYPE_3__*,int ,int ) ;
 int DPRINT (char*,scalar_t__,int ,int ) ;
 int DPRINT1 (char*,int ,scalar_t__) ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int KEY_READ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int **) ;
 scalar_t__ RegQueryValueExW (int *,int ,int *,int *,int *,scalar_t__*) ;
 int SERVICE ;
 int ServiceListEntry ;
 int TAG_ARRAY_SIZE ;
 int TRUE ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

DWORD
ScmAssignNewTag(PSERVICE lpService)
{
    HKEY hKey = ((void*)0);
    DWORD dwError;
    DWORD dwGroupTagCount = 0;
    PDWORD pdwGroupTags = ((void*)0);
    DWORD dwFreeTag = 0;
    DWORD dwTagUsedBase = 1;
    BOOLEAN TagUsed[TAG_ARRAY_SIZE];
    INT nTagOffset;
    DWORD i;
    DWORD cbDataSize;
    PLIST_ENTRY ServiceEntry;
    PSERVICE CurrentService;

    ASSERT(lpService != ((void*)0));
    ASSERT(lpService->lpGroup != ((void*)0));

    dwError = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                            L"System\\CurrentControlSet\\Control\\GroupOrderList",
                            0,
                            KEY_READ,
                            &hKey);

    if (dwError != ERROR_SUCCESS)
        goto findFreeTag;


    cbDataSize = 0;
    dwError = RegQueryValueExW(hKey,
                               lpService->lpGroup->szGroupName,
                               ((void*)0),
                               ((void*)0),
                               ((void*)0),
                               &cbDataSize);

    if (dwError != ERROR_SUCCESS && dwError != ERROR_MORE_DATA)
        goto findFreeTag;

    pdwGroupTags = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, cbDataSize);
    if (!pdwGroupTags)
    {
        dwError = ERROR_NOT_ENOUGH_MEMORY;
        goto cleanup;
    }

    dwError = RegQueryValueExW(hKey,
                               lpService->lpGroup->szGroupName,
                               ((void*)0),
                               ((void*)0),
                               (LPBYTE)pdwGroupTags,
                               &cbDataSize);

    if (dwError != ERROR_SUCCESS)
        goto findFreeTag;

    if (cbDataSize < sizeof(pdwGroupTags[0]))
        goto findFreeTag;

    dwGroupTagCount = min(pdwGroupTags[0], cbDataSize / sizeof(pdwGroupTags[0]) - 1);

findFreeTag:
    do
    {

        for (i = 0; i < TAG_ARRAY_SIZE; i++)
            TagUsed[i] = FALSE;


        for (i = 1; i <= dwGroupTagCount; i++)
        {
            nTagOffset = pdwGroupTags[i] - dwTagUsedBase;
            if (nTagOffset >= 0 && nTagOffset < TAG_ARRAY_SIZE)
                TagUsed[nTagOffset] = TRUE;
        }


        ServiceEntry = lpService->ServiceListEntry.Flink;
        while (ServiceEntry != &lpService->ServiceListEntry)
        {
            ASSERT(ServiceEntry != ((void*)0));
            CurrentService = CONTAINING_RECORD(ServiceEntry, SERVICE, ServiceListEntry);
            if (CurrentService->lpGroup == lpService->lpGroup)
            {
                nTagOffset = CurrentService->dwTag - dwTagUsedBase;
                if (nTagOffset >= 0 && nTagOffset < TAG_ARRAY_SIZE)
                    TagUsed[nTagOffset] = TRUE;
            }

            ServiceEntry = ServiceEntry->Flink;
        }


        for (i = 0; i < TAG_ARRAY_SIZE; i++)
        {
            if (!TagUsed[i])
            {
                dwFreeTag = dwTagUsedBase + i;
                break;
            }
        }

        dwTagUsedBase += TAG_ARRAY_SIZE;
    } while (!dwFreeTag);

cleanup:
    if (pdwGroupTags)
        HeapFree(GetProcessHeap(), 0, pdwGroupTags);

    if (hKey)
        RegCloseKey(hKey);

    if (dwFreeTag)
    {
        lpService->dwTag = dwFreeTag;
        DPRINT("Assigning new tag %lu to service %S in group %S\n",
               lpService->dwTag, lpService->lpServiceName, lpService->lpGroup->szGroupName);
        dwError = ERROR_SUCCESS;
    }
    else
    {
        DPRINT1("Failed to assign new tag to service %S, error=%lu\n",
                lpService->lpServiceName, dwError);
    }

    return dwError;
}
