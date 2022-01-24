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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  hProgress; int /*<<< orphan*/  hDlg; } ;
typedef  TYPE_1__* PPROGRESS_DATA ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ActionThread ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_SERVCON_PROGRESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PBM_SETRANGE ; 
 int /*<<< orphan*/  PBM_SETSTEP ; 
 int /*<<< orphan*/  PROGRESS_RANGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL
FUNC5(HWND hDlg,
                   UINT Message,
                   WPARAM wParam,
                   LPARAM lParam)
{
    PPROGRESS_DATA ProgressData = (PPROGRESS_DATA)lParam;
    HANDLE hThread;

    ProgressData->hDlg = hDlg;

    /* Get a handle to the progress bar */
    ProgressData->hProgress = FUNC1(hDlg,
                                         IDC_SERVCON_PROGRESS);
    if (!ProgressData->hProgress)
        return FALSE;

    /* Set the progress bar range */
    FUNC3(ProgressData->hProgress,
                 PBM_SETRANGE,
                 0,
                 FUNC2(0, PROGRESS_RANGE));

    /* Set the progress bar step */
    FUNC3(ProgressData->hProgress,
                 PBM_SETSTEP,
                 (WPARAM)1,
                 0);

    /* Create a thread to handle the service control */
    hThread = (HANDLE)FUNC4(NULL, 0, &ActionThread, ProgressData, 0, NULL);
    if (!hThread) return FALSE;

    FUNC0(hThread);

    return TRUE;
}