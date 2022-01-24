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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int* LogName; } ;
typedef  int* PWSTR ;
typedef  TYPE_1__* PLOGFILE ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  REG_MULTI_SZ ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,size_t,int*,int**,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC11 (int*,int*) ; 
 int FUNC12 (int*) ; 

BOOL
FUNC13(HKEY hKey,
                 PLOGFILE pLogFile)
{
    BOOL Success;
    DWORD dwNumSubKeys, dwMaxSubKeyLength;
    DWORD dwEventSourceNameLength, MaxValueLen;
    DWORD dwIndex;
    PWSTR Buf = NULL, SourceList = NULL, Source = NULL;
    size_t cchRemaining = 0;
    LONG Result;

    FUNC1("LoadEventSources\n");

    Result = FUNC8(hKey, NULL, NULL, NULL, &dwNumSubKeys, &dwMaxSubKeyLength,
                              NULL, NULL, NULL, NULL, NULL, NULL);
    if (Result != ERROR_SUCCESS)
    {
        FUNC2("RegQueryInfoKeyW failed: %lu\n", Result);
        return FALSE;
    }

    dwMaxSubKeyLength++;

    Buf = FUNC5(FUNC4(), 0, dwMaxSubKeyLength * sizeof(WCHAR));
    if (!Buf)
    {
        FUNC2("Error: cannot allocate heap!\n");
        return FALSE;
    }

    /*
     * Allocate a buffer for storing the names of the sources as a REG_MULTI_SZ
     * in the registry. Also add the event log as its own source.
     * Add a final NULL-terminator.
     */
    MaxValueLen = dwNumSubKeys * dwMaxSubKeyLength + FUNC12(pLogFile->LogName) + 2;
    SourceList = FUNC5(FUNC4(), 0, MaxValueLen * sizeof(WCHAR));
    if (!SourceList)
    {
        FUNC2("Error: cannot allocate heap!\n");
        /* It is not dramatic if we cannot create it */
    }
    else
    {
        cchRemaining = MaxValueLen;
        Source = SourceList;
    }

    /*
     * Enumerate all the subkeys of the event log key, that constitute
     * all the possible event sources for this event log. At this point,
     * skip the possible existing source having the same name as the
     * event log, it will be added later on.
     */
    dwEventSourceNameLength = dwMaxSubKeyLength;
    dwIndex = 0;
    while (FUNC7(hKey,
                         dwIndex,
                         Buf,
                         &dwEventSourceNameLength,
                         NULL, NULL, NULL, NULL) == ERROR_SUCCESS)
    {
        if (FUNC11(pLogFile->LogName, Buf) != 0)
        {
            FUNC1("Event Source: %S\n", Buf);
            Success = FUNC0(pLogFile, Buf);
            if (Success && (Source != NULL))
            {
                /* Append the event source name and an extra NULL-terminator */
                FUNC10(Source, cchRemaining, Buf, &Source, &cchRemaining, 0);
                if (cchRemaining > 0)
                {
                    *++Source = L'\0';
                    cchRemaining--;
                }
            }
        }

        dwEventSourceNameLength = dwMaxSubKeyLength;
        dwIndex++;
    }

    /* Finally, allow the event log itself to be its own source */
    FUNC1("Event Source: %S\n", pLogFile->LogName);
    Success = FUNC0(pLogFile, pLogFile->LogName);
    if (Success && (Source != NULL))
    {
        /* Append the event source name and an extra NULL-terminator */
        FUNC10(Source, cchRemaining, pLogFile->LogName, &Source, &cchRemaining, 0);
        if (cchRemaining > 0)
        {
            *++Source = L'\0';
            cchRemaining--;
        }
    }

    /* Save the list of sources in the registry */
    Result = FUNC9(hKey,
                            L"Sources",
                            0,
                            REG_MULTI_SZ,
                            (LPBYTE)SourceList,
                            (MaxValueLen - cchRemaining + 1) * sizeof(WCHAR));
    if (Result != ERROR_SUCCESS)
    {
        FUNC2("RegSetValueExW failed: %lu\n", Result);
    }

    if (SourceList)
        FUNC6(FUNC4(), 0, SourceList);

    FUNC6(FUNC4(), 0, Buf);

    FUNC3();

    return TRUE;
}