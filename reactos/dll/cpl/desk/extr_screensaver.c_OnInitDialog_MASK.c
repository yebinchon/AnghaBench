#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_8__ {int Selection; TYPE_1__* ScreenSaverItems; } ;
struct TYPE_7__ {scalar_t__ szDisplayName; int /*<<< orphan*/  szFilename; } ;
typedef  TYPE_2__* PDATA ;
typedef  scalar_t__ LPTSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DATA ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 size_t CB_ERR ; 
 int /*<<< orphan*/  CB_FINDSTRINGEXACT ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DWLP_USER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  IDC_SCREENS_LIST ; 
 int /*<<< orphan*/  IDC_SCREENS_TIME ; 
 int FUNC8 (short,short) ; 
 size_t MAX_SCREENSAVERS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  UDM_SETPOS32 ; 
 int /*<<< orphan*/  UDM_SETRANGE ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC15 (scalar_t__) ; 

__attribute__((used)) static BOOL
FUNC16(HWND hwndDlg, PDATA pData)
{
    LPTSTR lpCurSs;
    HWND hwndSSCombo = FUNC4(hwndDlg, IDC_SCREENS_LIST);
    INT Num;

    pData = FUNC6(FUNC5(),
                            HEAP_ZERO_MEMORY,
                            sizeof(DATA));
    if (!pData)
    {
        FUNC2(hwndDlg, -1);
        return FALSE;
    }

    FUNC12(hwndDlg,
                     DWLP_USER,
                     (LONG_PTR)pData);

    pData->Selection = -1;

    FUNC10(hwndDlg,
                       IDC_SCREENS_TIME,
                       UDM_SETRANGE,
                       0,
                       FUNC8
                       ((short) 240, (short) 1));

    FUNC0(hwndDlg,
                    pData);

    FUNC1(hwndDlg);

    /* Set the current screensaver in the combo box */
    lpCurSs = FUNC3(FUNC13("SCRNSAVE.EXE"));
    if (lpCurSs)
    {
        BOOL bFound = FALSE;
        INT i;

        for (i = 0; i < MAX_SCREENSAVERS; i++)
        {
            if (!FUNC14(lpCurSs, pData->ScreenSaverItems[i].szFilename))
            {
                bFound = TRUE;
                break;
            }
        }

        if (bFound)
        {
            Num = FUNC11(hwndSSCombo,
                              CB_FINDSTRINGEXACT,
                              -1,
                              (LPARAM)pData->ScreenSaverItems[i].szDisplayName);
            if (Num != CB_ERR)
                FUNC11(hwndSSCombo,
                            CB_SETCURSEL,
                            Num,
                            0);
        }
        else
        {
            FUNC11(hwndSSCombo,
                        CB_SETCURSEL,
                        0,
                        0);
        }

        FUNC7(FUNC5(),
                 0,
                 lpCurSs);
    }
    else
    {
        /* Set screensaver to (none) */
        FUNC11(hwndSSCombo,
                    CB_SETCURSEL,
                    0,
                    0);
    }

    /* Set the current timeout */
    lpCurSs = FUNC3(FUNC13("ScreenSaveTimeOut"));
    if (lpCurSs)
    {
        UINT Time = FUNC15(lpCurSs);

        Time /= 60;

        FUNC10(hwndDlg,
                           IDC_SCREENS_TIME,
                           UDM_SETPOS32,
                           0,
                           Time);

        FUNC7(FUNC5(),
                 0,
                 lpCurSs);

    }

    FUNC9(hwndDlg,
                     pData);

    return TRUE;
}