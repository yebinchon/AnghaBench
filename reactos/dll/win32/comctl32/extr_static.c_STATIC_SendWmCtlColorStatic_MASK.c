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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ HBRUSH ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_CTLCOLORSTATIC ; 

__attribute__((used)) static HBRUSH FUNC3(HWND hwnd, HDC hdc)
{
    HBRUSH hBrush;
    HWND parent = FUNC1(hwnd);

    if (!parent) parent = hwnd;
    hBrush = (HBRUSH) FUNC2( parent, WM_CTLCOLORSTATIC, (WPARAM)hdc, (LPARAM)hwnd );
    if (!hBrush) /* did the app forget to call DefWindowProc ? */
    {
        /* FIXME: DefWindowProc should return different colors if a
                  manifest is present */
        hBrush = (HBRUSH)FUNC0( parent, WM_CTLCOLORSTATIC, (WPARAM)hdc, (LPARAM)hwnd);
    }
    return hBrush;
}