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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_SERVCON_INFO ; 
 int /*<<< orphan*/  IDC_SERVCON_NAME ; 
 int /*<<< orphan*/  IDC_SERVCON_PROGRESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  PBM_SETPOS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  hInstance ; 

__attribute__((used)) static VOID
FUNC3(HWND hDlg,
                    LPWSTR ServiceName,
                    ULONG LabelId)
{
    LPWSTR lpProgStr;

    /* Load the label Id */
    if (FUNC0(&lpProgStr,
                           hInstance,
                           LabelId))
    {
        /* Write it to the dialog */
        FUNC2(hDlg,
                            IDC_SERVCON_INFO,
                            WM_SETTEXT,
                            0,
                            (LPARAM)lpProgStr);

        FUNC1(lpProgStr);
    }

    /* Write the service name to the dialog */
    FUNC2(hDlg,
                        IDC_SERVCON_NAME,
                        WM_SETTEXT,
                        0,
                        (LPARAM)ServiceName);

    /* Set the progress bar to the start */
    FUNC2(hDlg,
                        IDC_SERVCON_PROGRESS,
                        PBM_SETPOS,
                        0,
                        0);
}