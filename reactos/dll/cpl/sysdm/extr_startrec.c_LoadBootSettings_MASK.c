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
typedef  int /*<<< orphan*/  szValue ;
typedef  int /*<<< orphan*/  szOptions ;
typedef  int /*<<< orphan*/  szName ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/ * szOptions; int /*<<< orphan*/ * szSectionName; int /*<<< orphan*/ * szBootPath; scalar_t__ BootType; } ;
typedef  TYPE_1__* PBOOTRECORD ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HINF ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOTRECORD ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETCHECK ; 
 scalar_t__ BST_CHECKED ; 
 int /*<<< orphan*/  CB_ADDSTRING ; 
 scalar_t__ CB_ERR ; 
 int /*<<< orphan*/  CB_FINDSTRING ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IDC_STRECLIST ; 
 int /*<<< orphan*/  IDC_STRECOSCOMBO ; 
 int MAX_PATH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static INT
FUNC12(HINF hInf, HWND hwndDlg)
{
    INFCONTEXT InfContext;
    WCHAR szName[MAX_PATH];
    WCHAR szValue[MAX_PATH];
    DWORD LineLength;
    DWORD TimeOut = 0;
    WCHAR szDefaultOS[MAX_PATH];
    WCHAR szOptions[MAX_PATH];
    PBOOTRECORD pRecord;
    LRESULT lResult;

    if(!FUNC5(hInf,
                           L"boot loader",
                           NULL,
                           &InfContext))
    {
        return FALSE;
    }

    do
    {
        if (!FUNC7(&InfContext,
                                 0,
                                 szName,
                                 sizeof(szName) / sizeof(WCHAR),
                                 &LineLength))
        {
            return FALSE;
        }

        if (!FUNC7(&InfContext,
                                 1,
                                 szValue,
                                 sizeof(szValue) / sizeof(WCHAR),
                                 &LineLength))
        {
            return FALSE;
        }

        if (!FUNC8(szName, L"timeout", 7))
        {
            TimeOut = FUNC9(szValue);
        }

        if (!FUNC8(szName, L"default", 7))
        {
            FUNC11(szDefaultOS, szValue);
        }

    }
    while (FUNC6(&InfContext, &InfContext));

    if (!FUNC5(hInf,
                            L"operating systems",
                            NULL,
                            &InfContext))
    {
        /* Failed to find operating systems section */
        return FALSE;
    }

    do
    {
        if (!FUNC7(&InfContext,
                                 0,
                                 szName,
                                 sizeof(szName) / sizeof(WCHAR),
                                 &LineLength))
        {
            return FALSE;
        }

        if (!FUNC7(&InfContext,
                                 1,
                                 szValue,
                                 sizeof(szValue) / sizeof(WCHAR),
                                 &LineLength))
        {
            return FALSE;
        }

        FUNC7(&InfContext,
                            2,
                            szOptions,
                            sizeof(szOptions) / sizeof(WCHAR),
                            &LineLength);

        pRecord = (PBOOTRECORD) FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(BOOTRECORD));
        if (pRecord)
        {
            pRecord->BootType = 0;
            FUNC11(pRecord->szBootPath, szName);
            FUNC11(pRecord->szSectionName, szValue);
            FUNC11(pRecord->szOptions, szOptions);

            if (!FUNC10(szName, szDefaultOS))
            {
                /* ms boot ini stores the path not the friendly name */
                FUNC11(szDefaultOS, szValue);
            }

            lResult = FUNC3(hwndDlg, IDC_STRECOSCOMBO, CB_ADDSTRING, (WPARAM)0, (LPARAM)szValue);
            if (lResult != CB_ERR)
            {
                FUNC3(hwndDlg, IDC_STRECOSCOMBO, CB_SETITEMDATA, (WPARAM)lResult, (LPARAM)pRecord);
            }
            else
            {
               FUNC2(FUNC0(), 0, pRecord);
            }
        }

    }
    while (FUNC6(&InfContext, &InfContext));

    /* Find default os in list */
    lResult = FUNC3(hwndDlg, IDC_STRECOSCOMBO, CB_FINDSTRING, (WPARAM)0, (LPARAM)szDefaultOS);
    if (lResult != CB_ERR)
    {
       /* Set cur sel */
       FUNC3(hwndDlg, IDC_STRECOSCOMBO, CB_SETCURSEL, (WPARAM)lResult, (LPARAM)0);
    }

    if(TimeOut)
    {
        FUNC3(hwndDlg, IDC_STRECLIST, BM_SETCHECK, (WPARAM)BST_CHECKED, (LPARAM)0);
    }

    FUNC4(hwndDlg, TimeOut);

    return TRUE;
}