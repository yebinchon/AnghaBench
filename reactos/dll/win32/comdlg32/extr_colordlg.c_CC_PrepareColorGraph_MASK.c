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
struct TYPE_7__ {int /*<<< orphan*/  hdcMem; int /*<<< orphan*/  hbmMem; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_6__ {int right; int bottom; int left; int top; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HCURSOR ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  TYPE_2__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_COLOR_GRAPH ; 
 scalar_t__ IDC_WAIT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int XSTEPS ; 
 int YSTEPS ; 

__attribute__((used)) static void FUNC13(CCPRIV *infoPtr)
{
 int sdif, hdif, xdif, ydif, hue, sat;
 HWND hwnd = FUNC8(infoPtr->hwndSelf, IDC_COLOR_GRAPH);
 HBRUSH hbrush;
 HDC hdc ;
 RECT rect, client;
 HCURSOR hcursor = FUNC12( FUNC9(0, (LPCWSTR)IDC_WAIT) );

 FUNC6(hwnd, &client);
 hdc = FUNC7(hwnd);
 infoPtr->hdcMem = FUNC2(hdc);
 infoPtr->hbmMem = FUNC1(hdc, client.right, client.bottom);
 FUNC11(infoPtr->hdcMem, infoPtr->hbmMem);

 xdif = client.right / XSTEPS;
 ydif = client.bottom / YSTEPS+1;
 hdif = 239 / XSTEPS;
 sdif = 240 / YSTEPS;
 for (rect.left = hue = 0; hue < 239 + hdif; hue += hdif)
 {
  rect.right = rect.left + xdif;
  rect.bottom = client.bottom;
  for(sat = 0; sat < 240 + sdif; sat += sdif)
  {
   rect.top = rect.bottom - ydif;
   hbrush = FUNC3(FUNC0(hue, sat, 120));
   FUNC5(infoPtr->hdcMem, &rect, hbrush);
   FUNC4(hbrush);
   rect.bottom = rect.top;
  }
  rect.left = rect.right;
 }
 FUNC10(hwnd, hdc);
 FUNC12(hcursor);
}