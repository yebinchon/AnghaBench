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
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_3__ {int bottom; int top; int /*<<< orphan*/  right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_EDITOR ; 
 int /*<<< orphan*/  IDC_PREVIEW ; 
 int /*<<< orphan*/  IDC_REBAR ; 
 int /*<<< orphan*/  IDC_RULER ; 
 int /*<<< orphan*/  IDC_STATUSBAR ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_GETBARHEIGHT ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SIZE ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static LRESULT FUNC9( HWND hWnd, WPARAM wParam, LPARAM lParam )
{
    int nStatusSize = 0;
    RECT rc;
    HWND hwndEditor = FUNC7() ? FUNC2(hWnd, IDC_PREVIEW) : FUNC2(hWnd, IDC_EDITOR);
    HWND hwndStatusBar = FUNC2(hWnd, IDC_STATUSBAR);
    HWND hwndReBar = FUNC2(hWnd, IDC_REBAR);
    HWND hRulerWnd = FUNC2(hwndReBar, IDC_RULER);
    int rebarHeight = 0;

    if (hwndStatusBar)
    {
        FUNC6(hwndStatusBar, WM_SIZE, 0, 0);
        if (FUNC3(hwndStatusBar))
        {
            FUNC1(hwndStatusBar, &rc);
            nStatusSize = rc.bottom - rc.top;
        } else
        {
            nStatusSize = 0;
        }
    }
    if (hwndReBar)
    {
        rebarHeight = FUNC6(hwndReBar, RB_GETBARHEIGHT, 0, 0);

        FUNC5(hwndReBar, 0, 0, FUNC4(lParam), rebarHeight, TRUE);
    }
    if (hwndEditor)
    {
        FUNC1(hWnd, &rc);
        FUNC5(hwndEditor, 0, rebarHeight, rc.right, rc.bottom-nStatusSize-rebarHeight, TRUE);
    }

    FUNC8(hRulerWnd);

    return FUNC0(hWnd, WM_SIZE, wParam, lParam);
}