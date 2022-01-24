#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_1__* lpcc; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_15__ {int x; int y; } ;
struct TYPE_14__ {int right; int left; int bottom; int top; } ;
struct TYPE_13__ {int /*<<< orphan*/  rgbResult; int /*<<< orphan*/ * lpCustColors; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ POINT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  TYPE_4__ CCPRIV ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int DISTANCE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  IDC_COLOR_USRDEF ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC7(CCPRIV *lpp, int rows, int cols, LPARAM lParam)
{
 HWND hwnd;
 POINT point;
 RECT rect;
 int dx, dy, x, y;
 COLORREF *crarr = lpp->lpcc->lpCustColors;

 FUNC1(lParam, &point);
 FUNC2(lpp->hwndSelf, &point);
 hwnd = FUNC3(lpp->hwndSelf, IDC_COLOR_USRDEF);
 FUNC4(hwnd, &rect);
 if (FUNC5(&rect, point))
 {
  dx = (rect.right - rect.left) / cols;
  dy = (rect.bottom - rect.top) / rows;
  FUNC6(hwnd, &point);

  if (point.x % dx < (dx - DISTANCE) && point.y % dy < (dy - DISTANCE))
  {
   x = point.x / dx;
   y = point.y / dy;
   lpp->lpcc->rgbResult = crarr[x + (cols * y) ];
   FUNC0(lpp, hwnd, x, y, rows, cols);
   return TRUE;
  }
 }
 return FALSE;
}