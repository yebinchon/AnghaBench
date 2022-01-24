#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szFmt ;
typedef  int /*<<< orphan*/  szBuffer ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_10__ {int /*<<< orphan*/  hwndDlg; TYPE_1__* DeskExtInterface; } ;
struct TYPE_9__ {scalar_t__ dmBitsPerPel; scalar_t__ dmPelsWidth; scalar_t__ dmPelsHeight; int dmDisplayFrequency; } ;
struct TYPE_8__ {int /*<<< orphan*/  Context; TYPE_2__* (* EnumAllModes ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_2__* (* GetCurrentMode ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_2__* PDEVMODEW ;
typedef  TYPE_3__* PDESKMONITOR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_RESETCONTENT ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  IDC_REFRESHRATE ; 
 int /*<<< orphan*/  IDS_FREQFMT ; 
 int /*<<< orphan*/  IDS_MONITORSETTINGSGROUP ; 
 int /*<<< orphan*/  IDS_REFRESHRATELABEL ; 
 int /*<<< orphan*/  IDS_USEDEFFRQUENCY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  hInstance ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC9(PDESKMONITOR This)
{
    PDEVMODEW lpCurrentMode, lpMode;
    TCHAR szBuffer[64];
    DWORD dwIndex;
    INT i;
    BOOL bHasDef = FALSE;
    BOOL bAdded = FALSE;

    /* Fill the refresh rate combo box */
    FUNC4(This->hwndDlg,
                       IDC_REFRESHRATE,
                       CB_RESETCONTENT,
                       0,
                       0);

    lpCurrentMode = This->DeskExtInterface->GetCurrentMode(This->DeskExtInterface->Context);
    dwIndex = 0;

    do
    {
        lpMode = This->DeskExtInterface->EnumAllModes(This->DeskExtInterface->Context,
                                                      dwIndex++);
        if (lpMode != NULL &&
            lpMode->dmBitsPerPel == lpCurrentMode->dmBitsPerPel &&
            lpMode->dmPelsWidth == lpCurrentMode->dmPelsWidth &&
            lpMode->dmPelsHeight == lpCurrentMode->dmPelsHeight)
        {
            /* We're only interested in refresh rates for the current resolution and color depth */

            if (lpMode->dmDisplayFrequency <= 1)
            {
                /* Default hardware frequency */
                if (bHasDef)
                    continue;

                bHasDef = TRUE;

                if (!FUNC3(hInstance,
                                IDS_USEDEFFRQUENCY,
                                szBuffer,
                                sizeof(szBuffer) / sizeof(szBuffer[0])))
                {
                    szBuffer[0] = FUNC5('\0');
                }
            }
            else
            {
                TCHAR szFmt[64];

                if (!FUNC3(hInstance,
                                IDS_FREQFMT,
                                szFmt,
                                sizeof(szFmt) / sizeof(szFmt[0])))
                {
                    szFmt[0] = FUNC5('\0');
                }

                FUNC6(szBuffer,
                           sizeof(szBuffer) / sizeof(szBuffer[0]),
                           szFmt,
                           lpMode->dmDisplayFrequency);
            }

            i = (INT)FUNC4(This->hwndDlg,
                                        IDC_REFRESHRATE,
                                        CB_ADDSTRING,
                                        0,
                                        (LPARAM)szBuffer);
            if (i >= 0)
            {
                bAdded = TRUE;

                FUNC4(This->hwndDlg,
                                   IDC_REFRESHRATE,
                                   CB_SETITEMDATA,
                                   (WPARAM)i,
                                   (LPARAM)lpMode);

                if (lpMode->dmDisplayFrequency == lpCurrentMode->dmDisplayFrequency)
                {
                    FUNC4(This->hwndDlg,
                                       IDC_REFRESHRATE,
                                       CB_SETCURSEL,
                                       (WPARAM)i,
                                       0);
                }
            }
        }

    } while (lpMode != NULL);

    FUNC0(FUNC1(This->hwndDlg,
                            IDS_MONITORSETTINGSGROUP),
                 bAdded);
    FUNC0(FUNC1(This->hwndDlg,
                            IDS_REFRESHRATELABEL),
                 bAdded);
    FUNC0(FUNC1(This->hwndDlg,
                            IDC_REFRESHRATE),
                 bAdded);

    FUNC2(This);
}