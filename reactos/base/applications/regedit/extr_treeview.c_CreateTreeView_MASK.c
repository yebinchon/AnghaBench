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
struct TYPE_3__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TVS_EDITLABELS ; 
 int TVS_HASBUTTONS ; 
 int TVS_HASLINES ; 
 int TVS_LINESATROOT ; 
 int TVS_SHOWSELALWAYS ; 
 int /*<<< orphan*/  WC_TREEVIEW ; 
 int WS_CHILD ; 
 int /*<<< orphan*/  WS_EX_CLIENTEDGE ; 
 int WS_TABSTOP ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  hInst ; 

HWND FUNC5(HWND hwndParent, LPWSTR pHostName, HMENU id)
{
    RECT rcClient;
    HWND hwndTV;

    /* Get the dimensions of the parent window's client area, and create the tree view control.  */
    FUNC2(hwndParent, &rcClient);
    hwndTV = FUNC0(WS_EX_CLIENTEDGE, WC_TREEVIEW, NULL,
                            WS_VISIBLE | WS_CHILD | WS_TABSTOP | TVS_HASLINES | TVS_HASBUTTONS | TVS_LINESATROOT | TVS_EDITLABELS | TVS_SHOWSELALWAYS,
                            0, 0, rcClient.right, rcClient.bottom,
                            hwndParent, id, hInst, NULL);
    /* Initialize the image list, and add items to the control.  */
    if (!FUNC3(hwndTV) || !FUNC4(hwndTV, pHostName))
    {
        FUNC1(hwndTV);
        return NULL;
    }
    return hwndTV;
}