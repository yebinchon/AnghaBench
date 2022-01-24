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
typedef  int /*<<< orphan*/  msiexec_version ;
typedef  int /*<<< orphan*/  filename ;
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int MAX_PATH ; 
 int FUNC9 (scalar_t__*,scalar_t__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void FUNC13(int ExitCode)
{
    WCHAR msiexec_version[40];
    WCHAR filename[MAX_PATH];
    LPWSTR msi_res;
    LPWSTR msiexec_help;
    HMODULE hmsi = FUNC3("msi.dll");
    DWORD len;
    DWORD res;

    /* MsiGetFileVersion need the full path */
    *filename = 0;
    res = FUNC2(hmsi, filename, sizeof(filename) / sizeof(filename[0]));
    if (!res)
        FUNC11("GetModuleFileName failed: %d\n", FUNC1());

    len = sizeof(msiexec_version) / sizeof(msiexec_version[0]);
    *msiexec_version = 0;
    res = FUNC9(filename, msiexec_version, &len, NULL, NULL);
    if (res)
        FUNC11("MsiGetFileVersion failed with %d\n", res);

    /* Return the length of the resource.
       No typo: The LPWSTR parameter must be a LPWSTR * for this mode */
    len = FUNC8(hmsi, 10, (LPWSTR) &msi_res, 0);

    msi_res = FUNC6(FUNC4(), 0, (len + 1) * sizeof(WCHAR));
    msiexec_help = FUNC6(FUNC4(), 0, (len + 1) * sizeof(WCHAR) + sizeof(msiexec_version));
    if (msi_res && msiexec_help) {
        *msi_res = 0;
        FUNC8(hmsi, 10, msi_res, len + 1);

        FUNC12(msiexec_help, msi_res, msiexec_version);
        FUNC10(0, msiexec_help, NULL, 0, FUNC5(), 0);
    }
    FUNC7(FUNC4(), 0, msi_res);
    FUNC7(FUNC4(), 0, msiexec_help);
    FUNC0(ExitCode);
}