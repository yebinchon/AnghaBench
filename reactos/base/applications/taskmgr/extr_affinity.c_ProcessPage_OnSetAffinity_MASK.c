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
typedef  int /*<<< orphan*/  szTitle ;
typedef  int /*<<< orphan*/  strErrorText ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AffinityDialogWndProc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  IDD_AFFINITY_DIALOG ; 
 int /*<<< orphan*/  IDS_MSG_ACCESSPROCESSAFF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int MB_ICONSTOP ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int PROCESS_QUERY_INFORMATION ; 
 int PROCESS_SET_INFORMATION ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  hMainWnd ; 
 int /*<<< orphan*/ * hProcessAffinityHandle ; 

void FUNC8(void)
{
    DWORD    dwProcessId;
    WCHAR    strErrorText[260];
    WCHAR    szTitle[256];

    dwProcessId = FUNC3();

    if (dwProcessId == 0)
        return;

    hProcessAffinityHandle = FUNC7(PROCESS_QUERY_INFORMATION|PROCESS_SET_INFORMATION, FALSE, dwProcessId);
    if (!hProcessAffinityHandle) {
        FUNC2(strErrorText, sizeof(strErrorText) / sizeof(WCHAR));
        FUNC4(hInst, IDS_MSG_ACCESSPROCESSAFF, szTitle, sizeof(szTitle) / sizeof(WCHAR));
        FUNC6(hMainWnd, strErrorText, szTitle, MB_OK|MB_ICONSTOP);
        return;
    }
    FUNC1(hInst, FUNC5(IDD_AFFINITY_DIALOG), hMainWnd, AffinityDialogWndProc);
    if (hProcessAffinityHandle)    {
        FUNC0(hProcessAffinityHandle);
        hProcessAffinityHandle = NULL;
    }
}