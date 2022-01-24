#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  hdcMem; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_6__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_2__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_COLOR_GRAPH ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(CCPRIV *infoPtr)
{
 HWND hwnd = FUNC4( infoPtr->hwndSelf, IDC_COLOR_GRAPH );
 HDC  hDC;
 RECT rect;

 if (FUNC5(hwnd))   /* if full size */
 {
  if (!infoPtr->hdcMem)
   FUNC1(infoPtr);   /* should not be necessary */

  hDC = FUNC3(hwnd);
  FUNC2(hwnd, &rect);
  if (infoPtr->hdcMem)
      FUNC0(hDC, 0, 0, rect.right, rect.bottom, infoPtr->hdcMem, 0, 0, SRCCOPY);
  else
      FUNC7("choose color: hdcMem is not defined\n");
  FUNC6(hwnd, hDC);
 }
}