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
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HTREEITEM ;
typedef  int /*<<< orphan*/  HCURSOR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IDC_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  WM_SETREDRAW ; 

BOOL FUNC9(HWND hwndTV)
{
    HTREEITEM hItem;
    HTREEITEM hSelectedItem;
    HCURSOR hcursorOld;

    hSelectedItem = FUNC7(hwndTV);
    hcursorOld = FUNC3(FUNC0(NULL, IDC_WAIT));
    FUNC2(hwndTV, WM_SETREDRAW, FALSE, 0);

    hItem = FUNC4(hwndTV, FUNC6(hwndTV));
    while (hItem)
    {
        FUNC1(hwndTV, hItem);
        hItem = FUNC5(hwndTV, hItem);
    }

    FUNC2(hwndTV, WM_SETREDRAW, TRUE, 0);
    FUNC3(hcursorOld);

    /* We reselect the currently selected node, this will prompt a refresh of the listview. */
    (void)FUNC8(hwndTV, hSelectedItem);
    return TRUE;
}