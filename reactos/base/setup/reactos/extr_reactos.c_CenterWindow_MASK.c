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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int right; int left; int bottom; int top; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  HWND_TOP ; 
 int /*<<< orphan*/  SWP_NOSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC4(HWND hWnd)
{
    HWND hWndParent;
    RECT rcParent;
    RECT rcWindow;

    hWndParent = FUNC1(hWnd);
    if (hWndParent == NULL)
        hWndParent = FUNC0();

    FUNC2(hWndParent, &rcParent);
    FUNC2(hWnd, &rcWindow);

    FUNC3(hWnd,
                 HWND_TOP,
                 ((rcParent.right - rcParent.left) - (rcWindow.right - rcWindow.left)) / 2,
                 ((rcParent.bottom - rcParent.top) - (rcWindow.bottom - rcWindow.top)) / 2,
                 0,
                 0,
                 SWP_NOSIZE);
}