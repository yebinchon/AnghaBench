#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int right; int left; int bottom; int top; } ;
struct TYPE_8__ {int /*<<< orphan*/  hwndFocus; TYPE_1__ focusRect; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_2__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(CCPRIV *lpp, HWND hwnd, int x, int y, int rows, int cols)
{
  RECT rect;
  int dx, dy;
  HDC hdc;

  FUNC0(lpp); /* remove current focus rect */
  /* calculate new rect */
  FUNC2(hwnd, &rect);
  dx = (rect.right - rect.left) / cols;
  dy = (rect.bottom - rect.top) / rows;
  rect.left += (x * dx) - 2;
  rect.top += (y * dy) - 2;
  rect.right = rect.left + dx;
  rect.bottom = rect.top + dy;
  /* draw it */
  hdc = FUNC3(hwnd);
  FUNC1(hdc, &rect);
  lpp->focusRect = rect;
  lpp->hwndFocus = hwnd;
  FUNC4(hwnd, hdc);
}