#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ message; } ;
typedef  TYPE_1__ MSG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QS_ALLINPUT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WM_QUIT ; 

__attribute__((used)) static BOOL
FUNC5(HWND hwndDlg,
                      HANDLE hProcess)
{
    DWORD dwResult;
    MSG msg;

    while (TRUE)
    {
        dwResult = FUNC2(1,
                                             &hProcess,
                                             FALSE,
                                             INFINITE,
                                             QS_ALLINPUT);
        if (dwResult == WAIT_OBJECT_0 + 1)
        {
            if (FUNC3(&msg, NULL, 0, 0, PM_REMOVE))
            {
                if (msg.message == WM_QUIT)
                {
                    return FALSE;
                }
                if (FUNC1(hwndDlg, &msg))
                {
                    FUNC4(&msg);
                    FUNC0(&msg);
                }
            }
            else
            {
                return FALSE;
            }
        }
        else if (dwResult == WAIT_OBJECT_0)
        {
            return TRUE;
        }
        else
        {
            return FALSE;
        }
    }
}