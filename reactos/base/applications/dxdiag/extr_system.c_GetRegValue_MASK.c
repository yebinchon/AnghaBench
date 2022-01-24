#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int* LPWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL
FUNC3(HKEY hBaseKey, LPWSTR SubKey, LPWSTR ValueName, DWORD Type, LPWSTR Result, DWORD Size)
{
    HKEY hKey;
    LONG res;
    DWORD dwType;
    DWORD dwSize;

    if (FUNC1(hBaseKey, SubKey, 0, KEY_QUERY_VALUE, &hKey) != ERROR_SUCCESS)
        return FALSE;

    dwSize = Size;
    res = FUNC2(hKey, ValueName, NULL, &dwType, (LPBYTE)Result, &dwSize);
    FUNC0(hKey);

    if (res != ERROR_SUCCESS)
        return FALSE;

    if (dwType != Type)
        return FALSE;

    if (Size == sizeof(DWORD))
        return TRUE;

    Result[(Size / sizeof(WCHAR))-1] = L'\0';
    return TRUE;
}