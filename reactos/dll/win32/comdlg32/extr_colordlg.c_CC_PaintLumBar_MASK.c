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
struct TYPE_8__ {int /*<<< orphan*/  s; int /*<<< orphan*/  h; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_7__ {int bottom; int top; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  TYPE_2__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  BDR_SUNKENOUTER ; 
 int /*<<< orphan*/  BF_RECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_COLOR_LUMBAR ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int YSTEPS ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(const CCPRIV *infoPtr)
{
 HWND hwnd = FUNC7(infoPtr->hwndSelf, IDC_COLOR_LUMBAR);
 RECT rect, client;
 int lum, ldif, ydif;
 HBRUSH hbrush;
 HDC hDC;

 if (FUNC8(hwnd))
 {
  hDC = FUNC6(hwnd);
  FUNC5(hwnd, &client);
  rect = client;

  ldif = 240 / YSTEPS;
  ydif = client.bottom / YSTEPS+1;
  for (lum = 0; lum < 240 + ldif; lum += ldif)
  {
   rect.top = FUNC10(0, rect.bottom - ydif);
   hbrush = FUNC1(FUNC0(infoPtr->h, infoPtr->s, lum));
   FUNC4(hDC, &rect, hbrush);
   FUNC2(hbrush);
   rect.bottom = rect.top;
  }
  FUNC5(hwnd, &rect);
  FUNC3(hDC, &rect, BDR_SUNKENOUTER, BF_RECT);
  FUNC9(hwnd, hDC);
 }
}