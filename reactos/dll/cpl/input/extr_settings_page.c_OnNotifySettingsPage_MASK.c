#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {int wFlags; } ;
struct TYPE_6__ {int code; int /*<<< orphan*/  hwndFrom; int /*<<< orphan*/  idFrom; } ;
struct TYPE_5__ {int iItem; scalar_t__ lParam; int /*<<< orphan*/  mask; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ LVITEM ;
typedef  TYPE_2__* LPNMHDR ;
typedef  scalar_t__ LPARAM ;
typedef  int INT ;
typedef  TYPE_3__ INPUT_LIST_NODE ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int EWX_FORCE ; 
 int EWX_REBOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_KEYLAYOUT_LIST ; 
 int /*<<< orphan*/  IDC_SET_DEFAULT ; 
 int /*<<< orphan*/  IDS_LANGUAGE ; 
 int /*<<< orphan*/  IDS_REBOOT_NOW ; 
 int /*<<< orphan*/  IDYES ; 
 int INPUT_LIST_NODE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  LVIF_PARAM ; 
 int /*<<< orphan*/  LVNI_SELECTED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MB_ICONINFORMATION ; 
 int MB_YESNOCANCEL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
#define  NM_CLICK 129 
#define  PSN_APPLY 128 
 int /*<<< orphan*/  SE_SHUTDOWN_NAME ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hApplet ; 

__attribute__((used)) static VOID
FUNC11(HWND hwndDlg, LPARAM lParam)
{
    LPNMHDR header;

    header = (LPNMHDR)lParam;

    switch (header->code)
    {
        case NM_CLICK:
        {
            if (header->idFrom == IDC_KEYLAYOUT_LIST)
            {
                INT iSelected = FUNC6(header->hwndFrom, -1, LVNI_SELECTED);

                if (iSelected != -1)
                {
                    LVITEM item = { 0 };

                    FUNC9(hwndDlg, TRUE);

                    item.mask = LVIF_PARAM;
                    item.iItem = iSelected;

                    if (FUNC5(header->hwndFrom, &item) != FALSE)
                    {
                        INPUT_LIST_NODE *pInput;

                        pInput = (INPUT_LIST_NODE*) item.lParam;

                        if (pInput != NULL && pInput->wFlags & INPUT_LIST_NODE_FLAG_DEFAULT)
                        {
                            FUNC1(FUNC3(hwndDlg, IDC_SET_DEFAULT), FALSE);
                        }
                    }
                }
                else
                {
                    FUNC9(hwndDlg, FALSE);
                }
            }
        }
        break;

        case PSN_APPLY:
        {
            /* Write Input Methods list to registry */
            if (FUNC4())
            {
                /* Needs reboot */
                WCHAR szNeedsReboot[128], szLanguage[64];
                FUNC7(hApplet, IDS_REBOOT_NOW, szNeedsReboot, FUNC10(szNeedsReboot));
                FUNC7(hApplet, IDS_LANGUAGE, szLanguage, FUNC10(szLanguage));

                if (FUNC8(hwndDlg, szNeedsReboot, szLanguage,
                                MB_ICONINFORMATION | MB_YESNOCANCEL) == IDYES)
                {
                    FUNC0(SE_SHUTDOWN_NAME, TRUE);
                    FUNC2(EWX_REBOOT | EWX_FORCE, 0);
                }
            }
        }
        break;
    }
}