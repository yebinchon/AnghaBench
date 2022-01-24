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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_STRRECLISTEDIT ; 
 int /*<<< orphan*/  IDC_STRRECLISTUPDWN ; 
 scalar_t__ FUNC2 (short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UDM_SETPOS ; 
 int /*<<< orphan*/  UDM_SETRANGE ; 

__attribute__((used)) static VOID
FUNC4(HWND hwndDlg, INT Timeout)
{
    if (Timeout == 0)
    {
        FUNC0(FUNC1(hwndDlg, IDC_STRRECLISTUPDWN), FALSE);
        FUNC0(FUNC1(hwndDlg, IDC_STRRECLISTEDIT), FALSE);
    }
    else
    {
        FUNC0(FUNC1(hwndDlg, IDC_STRRECLISTUPDWN), TRUE);
        FUNC0(FUNC1(hwndDlg, IDC_STRRECLISTEDIT), TRUE);
    }
    FUNC3(hwndDlg, IDC_STRRECLISTUPDWN, UDM_SETRANGE, (WPARAM) 0, (LPARAM) FUNC2((short) 999, 0));
    FUNC3(hwndDlg, IDC_STRRECLISTUPDWN, UDM_SETPOS, (WPARAM) 0, (LPARAM) FUNC2((short) Timeout, 0));
}