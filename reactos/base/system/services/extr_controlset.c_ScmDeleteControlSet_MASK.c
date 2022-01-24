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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  char* DWORD ;

/* Variables and functions */
 int DELETE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int KEY_ENUMERATE_SUB_KEYS ; 
 int KEY_QUERY_VALUE ; 
 int KEY_SET_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 

__attribute__((used)) static
DWORD
FUNC6(
    DWORD dwControlSet)
{
    WCHAR szControlSetName[32];
    HKEY hControlSetKey = NULL;
    DWORD dwError;

    FUNC0("ScmDeleteControSet(%lu)\n", dwControlSet);

    /* Create the control set name */
    FUNC5(szControlSetName, L"SYSTEM\\ControlSet%03lu", dwControlSet);
    FUNC0("Control set: %S\n", szControlSetName);

    /* Open the system key */
    dwError = FUNC3(HKEY_LOCAL_MACHINE,
                            szControlSetName,
                            0,
                            DELETE | KEY_ENUMERATE_SUB_KEYS | KEY_QUERY_VALUE | KEY_SET_VALUE,
                            &hControlSetKey);
    if (dwError != ERROR_SUCCESS)
        return dwError;

    /* Delete the control set */
#if (_WIN32_WINNT >= 0x0600)
    dwError = RegDeleteTreeW(hControlSetKey,
                             NULL);
#else
    dwError = FUNC4(hControlSetKey,
                            NULL);
#endif

    /* Open the system key */
    FUNC1(hControlSetKey);

    return dwError;
}