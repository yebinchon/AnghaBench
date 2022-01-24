#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* lpcc; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_4__ {int /*<<< orphan*/  rgbResult; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBRUSH ;
typedef  TYPE_2__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  BDR_SUNKENOUTER ; 
 int /*<<< orphan*/  BF_RECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_COLOR_GRAPH ; 
 int /*<<< orphan*/  IDC_COLOR_RESULT ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(const CCPRIV *infoPtr)
{
 if (FUNC7( FUNC6(infoPtr->hwndSelf, IDC_COLOR_GRAPH) ))   /* if full size */
 {
  RECT rect;
  HDC  hdc;
  HBRUSH hBrush;
  HWND hwnd = FUNC6(infoPtr->hwndSelf, IDC_COLOR_RESULT);

  hdc = FUNC5(hwnd);
  FUNC4(hwnd, &rect) ;
  hBrush = FUNC0(infoPtr->lpcc->rgbResult);
  if (hBrush)
  {
   FUNC3(hdc, &rect, hBrush);
   FUNC2(hdc, &rect, BDR_SUNKENOUTER, BF_RECT);
   FUNC1(hBrush);
  }
  FUNC8(hwnd, hdc);
 }
}