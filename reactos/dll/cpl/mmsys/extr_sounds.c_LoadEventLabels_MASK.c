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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  PGLOBAL_DATA ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

BOOL
FUNC6(PGLOBAL_DATA pGlobalData)
{
    HKEY hSubKey;
    DWORD dwCurKey;
    TCHAR szName[MAX_PATH];
    DWORD dwName;
    DWORD dwResult;
    DWORD dwCount;
    if (FUNC3(HKEY_CURRENT_USER,
                     FUNC4("AppEvents\\EventLabels"),
                     0,
                     KEY_READ,
                     &hSubKey) != ERROR_SUCCESS)
    {
        return FALSE;
    }

    dwCurKey = 0;
    dwCount = 0;
    do
    {
        dwName = FUNC5(szName);
        dwResult = FUNC2(hSubKey,
                                dwCurKey,
                                szName,
                                &dwName,
                                NULL,
                                NULL,
                                NULL,
                                NULL);

        if (dwResult == ERROR_SUCCESS)
        {
            if (FUNC0(pGlobalData, hSubKey, szName))
            {
                dwCount++;
            }
        }
        dwCurKey++;

    } while (dwResult == ERROR_SUCCESS);

    FUNC1(hSubKey);
    return (dwCount != 0);
}