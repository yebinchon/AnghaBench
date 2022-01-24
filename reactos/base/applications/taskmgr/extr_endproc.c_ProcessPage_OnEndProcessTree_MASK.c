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
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  IDS_MSG_CLOSESYSTEMPROCESS ; 
 int /*<<< orphan*/  IDS_MSG_TASKMGRWARNING ; 
 int /*<<< orphan*/  IDS_MSG_UNABLETERMINATEPRO ; 
 int /*<<< orphan*/  IDS_MSG_WARNINGTERMINATING ; 
 scalar_t__ IDYES ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MB_ICONSTOP ; 
 int MB_ICONWARNING ; 
 int MB_OK ; 
 int MB_TOPMOST ; 
 int MB_YESNO ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int PROCESS_QUERY_INFORMATION ; 
 int PROCESS_TERMINATE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  hMainWnd ; 

void FUNC8(void)
{
    DWORD   dwProcessId;
    HANDLE  hProcess;
    WCHAR   szTitle[256];
    WCHAR   strErrorText[260];

    dwProcessId = FUNC2();

    if (dwProcessId == 0)
        return;

    hProcess = FUNC6(PROCESS_TERMINATE | PROCESS_QUERY_INFORMATION, FALSE, dwProcessId);

    /* forbid killing system processes even if we have privileges -- sigh, windows kludge! */
    if (hProcess && FUNC3(hProcess))
    {
        FUNC4(hInst, IDS_MSG_UNABLETERMINATEPRO, szTitle, 256);
        FUNC4(hInst, IDS_MSG_CLOSESYSTEMPROCESS, strErrorText, 256);
        FUNC5(hMainWnd, strErrorText, szTitle, MB_OK|MB_ICONWARNING|MB_TOPMOST);
        FUNC0(hProcess);
        return;
    }

    FUNC4(hInst, IDS_MSG_WARNINGTERMINATING, strErrorText, 256);
    FUNC4(hInst, IDS_MSG_TASKMGRWARNING, szTitle, 256);
    if (FUNC5(hMainWnd, strErrorText, szTitle, MB_YESNO|MB_ICONWARNING) != IDYES)
    {
        if (hProcess) FUNC0(hProcess);
        return;
    }

    if (!hProcess)
    {
        FUNC1(strErrorText, 260);
        FUNC4(hInst, IDS_MSG_UNABLETERMINATEPRO, szTitle, 256);
        FUNC5(hMainWnd, strErrorText, szTitle, MB_OK|MB_ICONSTOP);
        return;
    }

    if (!FUNC7(hProcess, dwProcessId))
    {
        FUNC1(strErrorText, 260);
        FUNC4(hInst, IDS_MSG_UNABLETERMINATEPRO, szTitle, 256);
        FUNC5(hMainWnd, strErrorText, szTitle, MB_OK|MB_ICONSTOP);
    }

    FUNC0(hProcess);
}