#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int dwCrashDumpEnabled; scalar_t__ szDumpFile; scalar_t__ szMinidumpDir; } ;
typedef  TYPE_1__* PSTARTINFO ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_STRRECDEBUGCOMBO ; 
 int /*<<< orphan*/  IDC_STRRECDUMPFILE ; 
 int /*<<< orphan*/  IDC_STRRECOVERWRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SETTEXT ; 

__attribute__((used)) static VOID
FUNC4(HWND hwnd, PSTARTINFO pStartInfo)
{
    if (pStartInfo->dwCrashDumpEnabled == 0)
    {
        /* No crash information required */
        FUNC0(FUNC1(hwnd, IDC_STRRECDUMPFILE), FALSE);
        FUNC0(FUNC1(hwnd, IDC_STRRECOVERWRITE), FALSE);
    }
    else if (pStartInfo->dwCrashDumpEnabled == 3)
    {
        /* Minidump type */
        FUNC0(FUNC1(hwnd, IDC_STRRECDUMPFILE), TRUE);
        FUNC0(FUNC1(hwnd, IDC_STRRECOVERWRITE), FALSE);
        FUNC3(FUNC1(hwnd, IDC_STRRECDUMPFILE), WM_SETTEXT, (WPARAM)0, (LPARAM)pStartInfo->szMinidumpDir);
    }
    else if (pStartInfo->dwCrashDumpEnabled == 1 || pStartInfo->dwCrashDumpEnabled == 2)
    {
        /* Kernel or complete dump */
        FUNC0(FUNC1(hwnd, IDC_STRRECDUMPFILE), TRUE);
        FUNC0(FUNC1(hwnd, IDC_STRRECOVERWRITE), TRUE);
        FUNC3(FUNC1(hwnd, IDC_STRRECDUMPFILE), WM_SETTEXT, (WPARAM)0, (LPARAM)pStartInfo->szDumpFile);
    }
    FUNC2(hwnd, IDC_STRRECDEBUGCOMBO, CB_SETCURSEL, (WPARAM)pStartInfo->dwCrashDumpEnabled, (LPARAM)0);
}