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
typedef  int /*<<< orphan*/  (* PINSTALL_REACTOS ) (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/ * HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

__attribute__((used)) static
INT
FUNC5(INT argc, WCHAR* argv[])
{
    INT RetVal;
    HMODULE hDll;
    PINSTALL_REACTOS InstallReactOS;

    hDll = FUNC4(L"syssetup.dll");
    if (hDll == NULL)
    {
        FUNC0("Failed to load 'syssetup.dll'!\n");
        return FUNC2();
    }
    FUNC0("Loaded 'syssetup.dll'!\n");

    /* Call the standard Windows-compatible export */
    InstallReactOS = (PINSTALL_REACTOS)FUNC3(hDll, "InstallWindowsNt");
    if (InstallReactOS == NULL)
    {
        RetVal = FUNC2();
        FUNC0("Failed to get address for 'InstallWindowsNt()'!\n");
    }
    else
    {
        RetVal = InstallReactOS(argc, argv);
    }

    FUNC1(hDll);
    return RetVal;
}