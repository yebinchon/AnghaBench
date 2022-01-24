#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  column ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int mask; int iSubItem; int cx; int /*<<< orphan*/ * pszText; int /*<<< orphan*/  fmt; } ;
typedef  TYPE_1__ LV_COLUMN ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_KEYLAYOUT_LIST ; 
 int /*<<< orphan*/  IDS_LANGUAGE ; 
 int /*<<< orphan*/  IDS_LAYOUT ; 
 int ILC_COLOR8 ; 
 int ILC_MASK ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  LVCFMT_LEFT ; 
 int /*<<< orphan*/  LVCFMT_RIGHT ; 
 int LVCF_FMT ; 
 int LVCF_SUBITEM ; 
 int LVCF_TEXT ; 
 int LVCF_WIDTH ; 
 int /*<<< orphan*/  LVSIL_SMALL ; 
 int /*<<< orphan*/  LVS_EX_FULLROWSELECT ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int MAX_STR_LEN ; 
 int /*<<< orphan*/  SM_CXSMICON ; 
 int /*<<< orphan*/  SM_CYSMICON ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  hApplet ; 

__attribute__((used)) static VOID
FUNC15(HWND hwndDlg)
{
    HWND hwndInputList;

    FUNC6();
    FUNC11();
    FUNC5();

    hwndInputList = FUNC1(hwndDlg, IDC_KEYLAYOUT_LIST);

    if (hwndInputList != NULL)
    {
        WCHAR szBuffer[MAX_STR_LEN];
        HIMAGELIST hLayoutImageList;
        LV_COLUMN column;

        FUNC8(hwndInputList, LVS_EX_FULLROWSELECT);

        FUNC14(&column, sizeof(column));

        column.mask = LVCF_FMT | LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;

        FUNC10(hApplet, IDS_LANGUAGE, szBuffer, FUNC0(szBuffer));
        column.fmt      = LVCFMT_LEFT;
        column.iSubItem = 0;
        column.pszText  = szBuffer;
        column.cx       = 175;
        FUNC7(hwndInputList, 0, &column);

        FUNC10(hApplet, IDS_LAYOUT, szBuffer, FUNC0(szBuffer));
        column.fmt      = LVCFMT_RIGHT;
        column.cx       = 155;
        column.iSubItem = 1;
        column.pszText  = szBuffer;
        FUNC7(hwndInputList, 1, &column);

        hLayoutImageList = FUNC3(FUNC2(SM_CXSMICON) * 2,
                                            FUNC2(SM_CYSMICON),
                                            ILC_COLOR8 | ILC_MASK, 0, 0);
        if (hLayoutImageList != NULL)
        {
            HIMAGELIST hOldImagelist = FUNC9(hwndInputList, hLayoutImageList, LVSIL_SMALL);
            FUNC4(hOldImagelist);
        }

        FUNC13(hwndInputList);
    }

    FUNC12(hwndDlg, FALSE);
}