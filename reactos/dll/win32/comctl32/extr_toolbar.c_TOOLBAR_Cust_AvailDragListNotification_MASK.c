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
struct TYPE_3__ {int uNotification; int /*<<< orphan*/  ptCursor; } ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ DRAGLISTINFO ;
typedef  int /*<<< orphan*/  CUSTDLG_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  DL_BEGINDRAG 131 
#define  DL_CANCELDRAG 130 
 int /*<<< orphan*/  DL_COPYCURSOR ; 
#define  DL_DRAGGING 129 
#define  DL_DROPPED 128 
 int /*<<< orphan*/  DL_STOPCURSOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_AVAILBTN_LBOX ; 
 int /*<<< orphan*/  IDC_TOOLBARBTN_LBOX ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_GETCOUNT ; 
 int /*<<< orphan*/  LB_GETCURSEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC8(const CUSTDLG_INFO *custInfo, HWND hwnd,
                                                      const DRAGLISTINFO *pDLI)
{
    HWND hwndList = FUNC2(hwnd, IDC_TOOLBARBTN_LBOX);
    switch (pDLI->uNotification)
    {
    case DL_BEGINDRAG:
        return TRUE;
    case DL_DRAGGING:
    {
        INT nCurrentItem = FUNC3(hwndList, pDLI->ptCursor, TRUE);
        INT nCount = FUNC6(hwndList, LB_GETCOUNT, 0, 0);
        /* no dragging past last item (separator) */
        if ((nCurrentItem >= 0) && (nCurrentItem < nCount))
        {
            FUNC1(hwnd, hwndList, nCurrentItem);
            /* FIXME: native uses "move button" cursor */
            return DL_COPYCURSOR;
        }

        /* not over toolbar buttons list */
        if (nCurrentItem < 0)
        {
            POINT ptWindow = pDLI->ptCursor;
            HWND hwndListAvail = FUNC2(hwnd, IDC_AVAILBTN_LBOX);
            FUNC4(NULL, hwnd, &ptWindow, 1);
            /* over available buttons list? */
            if (FUNC0(hwnd, ptWindow) == hwndListAvail)
                /* FIXME: native uses "move button" cursor */
                return DL_COPYCURSOR;
        }
        /* clear drag arrow */
        FUNC1(hwnd, hwndList, -1);
        return DL_STOPCURSOR;
    }
    case DL_DROPPED:
    {
        INT nIndexTo = FUNC3(hwndList, pDLI->ptCursor, TRUE);
        INT nCount = FUNC6(hwndList, LB_GETCOUNT, 0, 0);
        INT nIndexFrom = FUNC5(hwnd, IDC_AVAILBTN_LBOX, LB_GETCURSEL, 0, 0);
        if ((nIndexTo >= 0) && (nIndexTo < nCount))
        {
            /* clear drag arrow */
            FUNC1(hwnd, hwndList, -1);
            /* add item */
            FUNC7(custInfo, hwnd, nIndexFrom, nIndexTo);
        }
    }
    case DL_CANCELDRAG:
        /* Clear drag arrow */
        FUNC1(hwnd, hwndList, -1);
        break;
    }
    return 0;
}