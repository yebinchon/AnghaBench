#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ LONG_PTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  ATOM ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GWLP_HINSTANCE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HINST_THISCOMPONENT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int SWP_ASYNCWINDOWPOS ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOOWNERZORDER ; 
 int SWP_NOSENDCHANGING ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(HWND parent)
{
    // Check if an mpv window is a child of this window. This will not
    // necessarily be the case because the hook functions will run for all
    // windows on the parent window's thread.
    ATOM cls = FUNC6();
    HWND child = FUNC1(parent, NULL, (LPWSTR)FUNC4(cls), NULL);
    if (!child)
        return;
    // Make sure the window was created by this instance
    if (FUNC3(child, GWLP_HINSTANCE) != (LONG_PTR)HINST_THISCOMPONENT)
        return;

    // Resize the mpv window to match its parent window's size
    RECT rm, rp;
    if (!FUNC2(child, &rm))
        return;
    if (!FUNC2(parent, &rp))
        return;
    if (FUNC0(&rm, &rp))
        return;
    FUNC5(child, NULL, 0, 0, rp.right, rp.bottom, SWP_ASYNCWINDOWPOS |
        SWP_NOACTIVATE | SWP_NOZORDER | SWP_NOOWNERZORDER | SWP_NOSENDCHANGING);
}