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
struct TYPE_4__ {int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GRAY_BRUSH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WHITE_PEN ; 

__attribute__((used)) static void FUNC8(HWND hWnd)
{
    PAINTSTRUCT ps;
    HDC hdc;
    RECT rc;
    
    hdc = FUNC0(hWnd, &ps);

    FUNC3(hWnd, &rc);

    /* dark frame */
    rc.right += 1;
    rc.bottom -= 1;
    FUNC2(hdc, &rc, FUNC4(GRAY_BRUSH));

    /* white highlight */
    FUNC7(hdc, FUNC4(WHITE_PEN));
    FUNC6(hdc, rc.right, 1, NULL);
    FUNC5(hdc, 1, 1);
    FUNC5(hdc, 1, rc.bottom - 1);

    
    FUNC6(hdc, 0, rc.bottom, NULL);
    FUNC5(hdc, rc.right, rc.bottom);

    FUNC1(hWnd, &ps);
}