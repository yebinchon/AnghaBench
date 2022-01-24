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
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  DWLP_MSGRESULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ GDT_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HWND_BROADCAST ; 
 int /*<<< orphan*/  IDC_MONTHCALENDAR ; 
 int /*<<< orphan*/  IDC_TIMEPICKER ; 
 int /*<<< orphan*/  MCCM_GETDATE ; 
 int /*<<< orphan*/  MCCM_RESET ; 
 int /*<<< orphan*/  PSNRET_NOERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WM_TIMECHANGE ; 

__attribute__((used)) static VOID
FUNC5(HWND hwnd)
{
    SYSTEMTIME Time;

    if (FUNC0(FUNC1(hwnd,
                                          IDC_TIMEPICKER),
                               &Time) == GDT_VALID &&
        FUNC2(FUNC1(hwnd,
                                IDC_MONTHCALENDAR),
                     MCCM_GETDATE,
                     (WPARAM)&Time,
                     0))
    {
        FUNC4(&Time);

        FUNC3(hwnd,
                          DWLP_MSGRESULT,
                          PSNRET_NOERROR);

        FUNC2(FUNC1(hwnd,
                                IDC_MONTHCALENDAR),
                     MCCM_RESET,
                     (WPARAM)&Time,
                     0);

        /* Broadcast the time change message */
        FUNC2(HWND_BROADCAST,
                     WM_TIMECHANGE,
                     0,
                     0);
    }
}