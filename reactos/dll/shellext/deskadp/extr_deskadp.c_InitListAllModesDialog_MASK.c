#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szRefreshRate ;
typedef  int /*<<< orphan*/  szFormat ;
typedef  int /*<<< orphan*/  szColors ;
typedef  int /*<<< orphan*/  szBuffer ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_11__ {TYPE_1__* DeskExtInterface; } ;
struct TYPE_10__ {int /*<<< orphan*/  dmPelsHeight; int /*<<< orphan*/  dmPelsWidth; } ;
struct TYPE_9__ {int /*<<< orphan*/  Context; TYPE_2__* (* EnumAllModes ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_2__* (* GetCurrentMode ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_2__* PDEVMODEW ;
typedef  TYPE_3__* PDESKDISPLAYADAPTER ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IDC_ALLVALIDMODES ; 
 int /*<<< orphan*/  IDS_MODEFMT ; 
 int /*<<< orphan*/  LB_ADDSTRING ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 int /*<<< orphan*/  LB_SETITEMDATA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hInstance ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC8(PDESKDISPLAYADAPTER This,
                       HWND hwndListAllModesDlg)
{
    TCHAR szFormat[64], szBuffer[64], szColors[64], szRefreshRate[64];
    PDEVMODEW lpDevMode, lpCurrentDevMode;
    DWORD dwIndex = 0;
    INT i;

    if (This->DeskExtInterface != NULL)
    {
        if (!FUNC2(hInstance,
                        IDS_MODEFMT,
                        szFormat,
                        sizeof(szFormat) / sizeof(szFormat[0])))
        {
            szFormat[0] = FUNC4('\0');
        }

        lpCurrentDevMode = This->DeskExtInterface->GetCurrentMode(This->DeskExtInterface->Context);

        do
        {
            lpDevMode = This->DeskExtInterface->EnumAllModes(This->DeskExtInterface->Context,
                                                             dwIndex++);
            if (lpDevMode != NULL)
            {
                FUNC0(lpDevMode,
                                    szColors,
                                    sizeof(szColors) / sizeof(szColors[0]));

                FUNC1(lpDevMode,
                                          szRefreshRate,
                                          sizeof(szRefreshRate) / sizeof(szRefreshRate[0]));

                FUNC5(szBuffer,
                           sizeof(szBuffer) / sizeof(szBuffer[0]),
                           szFormat,
                           lpDevMode->dmPelsWidth,
                           lpDevMode->dmPelsHeight,
                           szColors,
                           szRefreshRate);

                i = (INT)FUNC3(hwndListAllModesDlg,
                                            IDC_ALLVALIDMODES,
                                            LB_ADDSTRING,
                                            0,
                                            (LPARAM)szBuffer);
                if (i >= 0)
                {
                    FUNC3(hwndListAllModesDlg,
                                       IDC_ALLVALIDMODES,
                                       LB_SETITEMDATA,
                                       (WPARAM)i,
                                       (LPARAM)lpDevMode);

                    if (lpDevMode == lpCurrentDevMode)
                    {
                        FUNC3(hwndListAllModesDlg,
                                           IDC_ALLVALIDMODES,
                                           LB_SETCURSEL,
                                           (WPARAM)i,
                                           0);
                    }
                }
            }

        } while (lpDevMode != NULL);
    }
}