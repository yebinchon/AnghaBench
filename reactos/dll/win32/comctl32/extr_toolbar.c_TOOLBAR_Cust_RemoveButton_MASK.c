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
struct TYPE_10__ {int /*<<< orphan*/  tbInfo; int /*<<< orphan*/  tbHwnd; } ;
struct TYPE_8__ {int fsStyle; } ;
struct TYPE_9__ {TYPE_1__ btn; } ;
typedef  TYPE_2__* PCUSTOMBUTTON ;
typedef  int /*<<< orphan*/  NMHDR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_3__ CUSTDLG_INFO ;

/* Variables and functions */
 int BTNS_SEP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_TOOLBARBTN_LBOX ; 
 int /*<<< orphan*/  LB_DELETESTRING ; 
 int /*<<< orphan*/  LB_GETITEMDATA ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TBN_TOOLBARCHANGE ; 
 int /*<<< orphan*/  TB_DELETEBUTTON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const CUSTDLG_INFO *custInfo, HWND hwnd, INT index)
{
    PCUSTOMBUTTON btnInfo;
    HWND hwndList = FUNC1(hwnd, IDC_TOOLBARBTN_LBOX);

    FUNC6("Remove: index %d\n", index);

    btnInfo = (PCUSTOMBUTTON)FUNC2(hwndList, LB_GETITEMDATA, index, 0);

    /* send TBN_QUERYDELETE notification */
    if (FUNC4(custInfo->tbInfo, index, btnInfo))
    {
        NMHDR hdr;

        FUNC2(hwndList, LB_DELETESTRING, index, 0);
        FUNC2(hwndList, LB_SETCURSEL, index , 0);

        FUNC2(custInfo->tbHwnd, TB_DELETEBUTTON, index, 0);

        /* insert into 'available button' list */
        if (!(btnInfo->btn.fsStyle & BTNS_SEP))
            FUNC3(hwnd, btnInfo);
        else
            FUNC0(btnInfo);

        FUNC5(&hdr, custInfo->tbInfo, TBN_TOOLBARCHANGE);
    }
}