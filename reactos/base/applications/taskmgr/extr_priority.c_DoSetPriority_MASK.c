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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  IDS_MSG_TASKMGRWARNING ; 
 int /*<<< orphan*/  IDS_MSG_UNABLECHANGEPRIORITY ; 
 int /*<<< orphan*/  IDS_MSG_WARNINGCHANGEPRIORITY ; 
 scalar_t__ IDYES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MB_ICONSTOP ; 
 int MB_ICONWARNING ; 
 int MB_OK ; 
 int MB_YESNO ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  PROCESS_SET_INFORMATION ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  hMainWnd ; 

void FUNC7(DWORD priority)
{
    DWORD   dwProcessId;
    HANDLE  hProcess;
    WCHAR   szText[260];
    WCHAR   szTitle[256];

    dwProcessId = FUNC2();

    if (dwProcessId == 0)
        return;

    FUNC3(hInst, IDS_MSG_TASKMGRWARNING, szTitle, 256);
    FUNC3(hInst, IDS_MSG_WARNINGCHANGEPRIORITY, szText, 260);
    if (FUNC4(hMainWnd, szText, szTitle, MB_YESNO|MB_ICONWARNING) != IDYES)
        return;

    hProcess = FUNC5(PROCESS_SET_INFORMATION, FALSE, dwProcessId);

    if (!hProcess)
    {
        FUNC1(szText, 260);
        FUNC3(hInst, IDS_MSG_UNABLECHANGEPRIORITY, szTitle, 256);
        FUNC4(hMainWnd, szText, szTitle, MB_OK|MB_ICONSTOP);
        return;
    }

    if (!FUNC6(hProcess, priority))
    {
        FUNC1(szText, 260);
        FUNC3(hInst, IDS_MSG_UNABLECHANGEPRIORITY, szTitle, 256);
        FUNC4(hMainWnd, szText, szTitle, MB_OK|MB_ICONSTOP);
    }

    FUNC0(hProcess);
}