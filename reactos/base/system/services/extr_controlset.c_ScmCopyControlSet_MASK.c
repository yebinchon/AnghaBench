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
typedef  int /*<<< orphan*/ * HKEY ;
typedef  char* DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 char* ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static
DWORD
FUNC8(
    DWORD dwSourceControlSet,
    DWORD dwDestinationControlSet)
{
    WCHAR szSourceControlSetName[32];
    WCHAR szDestinationControlSetName[32];
    HKEY hSourceControlSetKey = NULL;
    HKEY hDestinationControlSetKey = NULL;
    DWORD dwDisposition;
    DWORD dwError;

    /* Create the source control set name */
    FUNC7(szSourceControlSetName, L"SYSTEM\\ControlSet%03lu", dwSourceControlSet);
    FUNC0("Source control set: %S\n", szSourceControlSetName);

    /* Create the destination control set name */
    FUNC7(szDestinationControlSetName, L"SYSTEM\\ControlSet%03lu", dwDestinationControlSet);
    FUNC0("Destination control set: %S\n", szDestinationControlSetName);

    /* Open the source control set key */
    dwError = FUNC5(HKEY_LOCAL_MACHINE,
                            szSourceControlSetName,
                            0,
                            KEY_READ,
                            &hSourceControlSetKey);
    if (dwError != ERROR_SUCCESS)
        goto done;

    /* Create the destination control set key */
    dwError = FUNC3(HKEY_LOCAL_MACHINE,
                              szDestinationControlSetName,
                              0,
                              NULL,
                              REG_OPTION_NON_VOLATILE,
                              KEY_WRITE,
                              NULL,
                              &hDestinationControlSetKey,
                              &dwDisposition);
    if (dwError != ERROR_SUCCESS)
        goto done;

    /* Copy the source control set to the destination control set */
#if (_WIN32_WINNT >= 0x0600)
    dwError = RegCopyTreeW(hSourceControlSetKey,
                           NULL,
                           hDestinationControlSetKey);
#else
    dwError = FUNC6(hSourceControlSetKey,
                          hDestinationControlSetKey);
#endif
    if (dwError != ERROR_SUCCESS)
        goto done;

    FUNC4(hDestinationControlSetKey);

done:
    if (hDestinationControlSetKey != NULL)
        FUNC1(hDestinationControlSetKey);

    if (hSourceControlSetKey != NULL)
        FUNC1(hSourceControlSetKey);

    return dwError;
}