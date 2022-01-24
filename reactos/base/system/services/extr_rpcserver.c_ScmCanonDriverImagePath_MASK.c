#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
typedef  int WCHAR ;
struct TYPE_4__ {int Length; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int SIZE_T ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ SERVICE_BOOT_START ; 
 scalar_t__ FUNC7 (int*,int**) ; 
 int /*<<< orphan*/  FUNC8 (char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int const*) ; 
 int /*<<< orphan*/  FUNC10 (int*,...) ; 
 int FUNC11 (int const*) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ,int) ; 

DWORD
FUNC13(DWORD dwStartType,
                        const wchar_t *lpServiceName,
                        wchar_t **lpCanonName)
{
    DWORD Result;
    SIZE_T ServiceNameLen;
    UNICODE_STRING NtServiceName;
    WCHAR *RelativeName;
    const WCHAR *SourceName = lpServiceName;

    /* Calculate the length of the service's name */
    ServiceNameLen = FUNC11(lpServiceName);

    /* 12 is wcslen(L"\\SystemRoot\\") */
    if (ServiceNameLen > 12 &&
        !FUNC8(L"\\SystemRoot\\", lpServiceName, 12))
    {
        /* SystemRoot prefix is already included */
        *lpCanonName = FUNC3(FUNC2(),
                                 HEAP_ZERO_MEMORY,
                                 (ServiceNameLen + 1) * sizeof(WCHAR));

        if (*lpCanonName == NULL)
        {
            FUNC1("Error allocating memory for canonized service name!\n");
            return ERROR_NOT_ENOUGH_MEMORY;
        }

        /* If it's a boot-time driver, it must be systemroot relative */
        if (dwStartType == SERVICE_BOOT_START)
            SourceName += 12;

        /* Copy it */
        FUNC10(*lpCanonName, SourceName);

        FUNC1("Canonicalized name %S\n", *lpCanonName);
        return NO_ERROR;
    }

    /* Check if it has %SystemRoot% (len=13) */
    if (ServiceNameLen > 13 &&
        !FUNC8(L"%SystemRoot%\\", lpServiceName, 13))
    {
        /* Substitute %SystemRoot% with \\SystemRoot\\ */
        *lpCanonName = FUNC3(FUNC2(),
                                 HEAP_ZERO_MEMORY,
                                 (ServiceNameLen + 1) * sizeof(WCHAR));

        if (*lpCanonName == NULL)
        {
            FUNC1("Error allocating memory for canonized service name!\n");
            return ERROR_NOT_ENOUGH_MEMORY;
        }

        /* If it's a boot-time driver, it must be systemroot relative */
        if (dwStartType == SERVICE_BOOT_START)
            FUNC10(*lpCanonName, L"\\SystemRoot\\");

        FUNC9(*lpCanonName, lpServiceName + 13);

        FUNC1("Canonicalized name %S\n", *lpCanonName);
        return NO_ERROR;
    }

    /* Check if it's a relative path name */
    if (lpServiceName[0] != L'\\' && lpServiceName[1] != L':')
    {
        *lpCanonName = FUNC3(FUNC2(),
                                 HEAP_ZERO_MEMORY,
                                 (ServiceNameLen + 1) * sizeof(WCHAR));

        if (*lpCanonName == NULL)
        {
            FUNC1("Error allocating memory for canonized service name!\n");
            return ERROR_NOT_ENOUGH_MEMORY;
        }

        /* Just copy it over without changing */
        FUNC10(*lpCanonName, lpServiceName);

        return NO_ERROR;
    }

    /* It seems to be a DOS path, convert it */
    if (!FUNC5(lpServiceName, &NtServiceName, NULL, NULL))
    {
        FUNC1("RtlDosPathNameToNtPathName_U() failed!\n");
        return ERROR_INVALID_PARAMETER;
    }

    *lpCanonName = FUNC3(FUNC2(),
                             HEAP_ZERO_MEMORY,
                             NtServiceName.Length + sizeof(WCHAR));

    if (*lpCanonName == NULL)
    {
        FUNC1("Error allocating memory for canonized service name!\n");
        FUNC6(&NtServiceName);
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    /* Copy the string */
    FUNC12(*lpCanonName, NtServiceName.Buffer, NtServiceName.Length / sizeof(WCHAR));

    /* The unicode string is not needed anymore */
    FUNC6(&NtServiceName);

    if (dwStartType != SERVICE_BOOT_START)
    {
        FUNC1("Canonicalized name %S\n", *lpCanonName);
        return NO_ERROR;
    }

    /* The service is boot-started, so must be relative */
    Result = FUNC7(*lpCanonName, &RelativeName);
    if (Result)
    {
        /* There is a problem, free name and return */
        FUNC4(FUNC2(), 0, *lpCanonName);
        FUNC1("Error converting named!\n");
        return Result;
    }

    FUNC0(RelativeName);

    /* Copy that string */
    FUNC10(*lpCanonName, RelativeName + 12);

    /* Free the allocated buffer */
    FUNC4(FUNC2(), 0, RelativeName);

    FUNC1("Canonicalized name %S\n", *lpCanonName);

    /* Success */
    return NO_ERROR;
}