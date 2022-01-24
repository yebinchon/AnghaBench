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
typedef  scalar_t__* PDWORD ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static
DWORD
FUNC4(
    PDWORD pdwCurrentControlSet,
    PDWORD pdwDefaultControlSet,
    PDWORD pdwFailedControlSet,
    PDWORD pdwLastKnownGoodControlSet)
{
    HKEY hSelectKey;
    DWORD dwType;
    DWORD dwSize;
    DWORD dwError;

    FUNC0("ScmGetControlSetValues() called\n");

    dwError = FUNC2(HKEY_LOCAL_MACHINE,
                            L"System\\Select",
                            0,
                            KEY_READ,
                            &hSelectKey);
    if (dwError != ERROR_SUCCESS)
        return dwError;

    dwSize = sizeof(DWORD);
    dwError = FUNC3(hSelectKey,
                               L"Current",
                               0,
                               &dwType,
                               (LPBYTE)pdwCurrentControlSet,
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
    {
        *pdwCurrentControlSet = 0;
    }

    dwSize = sizeof(DWORD);
    dwError = FUNC3(hSelectKey,
                               L"Default",
                               0,
                               &dwType,
                               (LPBYTE)pdwDefaultControlSet,
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
    {
        *pdwDefaultControlSet = 0;
    }

    dwSize = sizeof(DWORD);
    dwError = FUNC3(hSelectKey,
                               L"Failed",
                               0,
                               &dwType,
                               (LPBYTE)pdwFailedControlSet,
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
    {
        *pdwFailedControlSet = 0;
    }

    dwSize = sizeof(DWORD);
    dwError = FUNC3(hSelectKey,
                               L"LastKnownGood",
                               0,
                               &dwType,
                               (LPBYTE)pdwLastKnownGoodControlSet,
                               &dwSize);
    if (dwError != ERROR_SUCCESS)
    {
        *pdwLastKnownGoodControlSet = 0;
    }

    FUNC1(hSelectKey);

    FUNC0("ControlSets:\n");
    FUNC0("Current: %lu\n", *pdwCurrentControlSet);
    FUNC0("Default: %lu\n", *pdwDefaultControlSet);
    FUNC0("Failed: %lu\n", *pdwFailedControlSet);
    FUNC0("LastKnownGood: %lu\n", *pdwLastKnownGoodControlSet);

    return dwError;
}