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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int nErrorLevel ; 

BOOL FUNC8(TCHAR *oldpath, TCHAR *InPath)
{
    TCHAR OutPath[MAX_PATH];
    TCHAR OutPathTemp[MAX_PATH];

    FUNC5(InPath);

    /* Retrieve the full path name from the (possibly relative) InPath */
    if (FUNC1(InPath, MAX_PATH, OutPathTemp, NULL) == 0)
        goto Fail;

    /* Convert the full path to its correct case.
     * Example: c:\windows\SYSTEM32 => C:\WINDOWS\System32 */
    FUNC3(OutPathTemp, OutPath);

    /* Use _tchdir, since unlike SetCurrentDirectory it updates
     * the current-directory-on-drive environment variables. */
    if (FUNC6(OutPath) != 0)
        goto Fail;

    /* Keep original drive in ordinary CD/CHDIR (without /D switch). */
    if (oldpath != NULL && FUNC7(OutPath, oldpath, 2) != 0)
        FUNC4(oldpath);

    return TRUE;

Fail:
    FUNC0(FUNC2());
    nErrorLevel = 1;
    return FALSE;
}