
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int WCHAR ;
struct TYPE_4__ {int Length; int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int SIZE_T ;
typedef scalar_t__ DWORD ;


 int ASSERT (int*) ;
 int DPRINT (char*,...) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 scalar_t__ NO_ERROR ;
 int RtlDosPathNameToNtPathName_U (int const*,TYPE_1__*,int *,int *) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 scalar_t__ SERVICE_BOOT_START ;
 scalar_t__ ScmConvertToBootPathName (int*,int**) ;
 int _wcsnicmp (char*,int const*,int) ;
 int wcscat (int*,int const*) ;
 int wcscpy (int*,...) ;
 int wcslen (int const*) ;
 int wcsncpy (int*,int ,int) ;

DWORD
ScmCanonDriverImagePath(DWORD dwStartType,
                        const wchar_t *lpServiceName,
                        wchar_t **lpCanonName)
{
    DWORD Result;
    SIZE_T ServiceNameLen;
    UNICODE_STRING NtServiceName;
    WCHAR *RelativeName;
    const WCHAR *SourceName = lpServiceName;


    ServiceNameLen = wcslen(lpServiceName);


    if (ServiceNameLen > 12 &&
        !_wcsnicmp(L"\\SystemRoot\\", lpServiceName, 12))
    {

        *lpCanonName = HeapAlloc(GetProcessHeap(),
                                 HEAP_ZERO_MEMORY,
                                 (ServiceNameLen + 1) * sizeof(WCHAR));

        if (*lpCanonName == ((void*)0))
        {
            DPRINT("Error allocating memory for canonized service name!\n");
            return ERROR_NOT_ENOUGH_MEMORY;
        }


        if (dwStartType == SERVICE_BOOT_START)
            SourceName += 12;


        wcscpy(*lpCanonName, SourceName);

        DPRINT("Canonicalized name %S\n", *lpCanonName);
        return NO_ERROR;
    }


    if (ServiceNameLen > 13 &&
        !_wcsnicmp(L"%SystemRoot%\\", lpServiceName, 13))
    {

        *lpCanonName = HeapAlloc(GetProcessHeap(),
                                 HEAP_ZERO_MEMORY,
                                 (ServiceNameLen + 1) * sizeof(WCHAR));

        if (*lpCanonName == ((void*)0))
        {
            DPRINT("Error allocating memory for canonized service name!\n");
            return ERROR_NOT_ENOUGH_MEMORY;
        }


        if (dwStartType == SERVICE_BOOT_START)
            wcscpy(*lpCanonName, L"\\SystemRoot\\");

        wcscat(*lpCanonName, lpServiceName + 13);

        DPRINT("Canonicalized name %S\n", *lpCanonName);
        return NO_ERROR;
    }


    if (lpServiceName[0] != L'\\' && lpServiceName[1] != L':')
    {
        *lpCanonName = HeapAlloc(GetProcessHeap(),
                                 HEAP_ZERO_MEMORY,
                                 (ServiceNameLen + 1) * sizeof(WCHAR));

        if (*lpCanonName == ((void*)0))
        {
            DPRINT("Error allocating memory for canonized service name!\n");
            return ERROR_NOT_ENOUGH_MEMORY;
        }


        wcscpy(*lpCanonName, lpServiceName);

        return NO_ERROR;
    }


    if (!RtlDosPathNameToNtPathName_U(lpServiceName, &NtServiceName, ((void*)0), ((void*)0)))
    {
        DPRINT("RtlDosPathNameToNtPathName_U() failed!\n");
        return ERROR_INVALID_PARAMETER;
    }

    *lpCanonName = HeapAlloc(GetProcessHeap(),
                             HEAP_ZERO_MEMORY,
                             NtServiceName.Length + sizeof(WCHAR));

    if (*lpCanonName == ((void*)0))
    {
        DPRINT("Error allocating memory for canonized service name!\n");
        RtlFreeUnicodeString(&NtServiceName);
        return ERROR_NOT_ENOUGH_MEMORY;
    }


    wcsncpy(*lpCanonName, NtServiceName.Buffer, NtServiceName.Length / sizeof(WCHAR));


    RtlFreeUnicodeString(&NtServiceName);

    if (dwStartType != SERVICE_BOOT_START)
    {
        DPRINT("Canonicalized name %S\n", *lpCanonName);
        return NO_ERROR;
    }


    Result = ScmConvertToBootPathName(*lpCanonName, &RelativeName);
    if (Result)
    {

        HeapFree(GetProcessHeap(), 0, *lpCanonName);
        DPRINT("Error converting named!\n");
        return Result;
    }

    ASSERT(RelativeName);


    wcscpy(*lpCanonName, RelativeName + 12);


    HeapFree(GetProcessHeap(), 0, RelativeName);

    DPRINT("Canonicalized name %S\n", *lpCanonName);


    return NO_ERROR;
}
