#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int left; int right; int top; int bottom; } ;
struct TYPE_12__ {int h; int s; TYPE_1__ oldcross; int /*<<< orphan*/  hdcMem; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_11__ {long x; long y; } ;
struct TYPE_10__ {long bottom; scalar_t__ right; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ POINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HPEN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_4__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_COLOR_GRAPH ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ MAXHORI ; 
 scalar_t__ MAXVERT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,TYPE_3__*) ; 
 int /*<<< orphan*/  PS_SOLID ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(CCPRIV *infoPtr)
{
 HWND hwnd = FUNC7(infoPtr->hwndSelf, IDC_COLOR_GRAPH);

 if (FUNC8(hwnd))   /* if full size */
 {
   HDC hDC;
   int w = FUNC6() - 1;
   int wc = FUNC6() * 3 / 4;
   RECT rect;
   POINT point, p;
   HPEN hPen;
   int x, y;

   x = infoPtr->h;
   y = infoPtr->s;

   FUNC4(hwnd, &rect);
   hDC = FUNC5(hwnd);
   FUNC13( hDC, FUNC2(&rect));

   point.x = ((long)rect.right * (long)x) / (long)MAXHORI;
   point.y = rect.bottom - ((long)rect.bottom * (long)y) / (long)MAXVERT;
   if ( infoPtr->oldcross.left != infoPtr->oldcross.right )
     FUNC0(hDC, infoPtr->oldcross.left, infoPtr->oldcross.top,
              infoPtr->oldcross.right - infoPtr->oldcross.left,
              infoPtr->oldcross.bottom - infoPtr->oldcross.top,
              infoPtr->hdcMem, infoPtr->oldcross.left, infoPtr->oldcross.top, SRCCOPY);
   infoPtr->oldcross.left   = point.x - w - 1;
   infoPtr->oldcross.right  = point.x + w + 1;
   infoPtr->oldcross.top    = point.y - w - 1;
   infoPtr->oldcross.bottom = point.y + w + 1;

   hPen = FUNC1(PS_SOLID, 3, FUNC11(0, 0, 0)); /* -black- color */
   hPen = FUNC14(hDC, hPen);
   FUNC10(hDC, point.x - w, point.y, &p);
   FUNC9(hDC, point.x - wc, point.y);
   FUNC10(hDC, point.x + wc, point.y, &p);
   FUNC9(hDC, point.x + w, point.y);
   FUNC10(hDC, point.x, point.y - w, &p);
   FUNC9(hDC, point.x, point.y - wc);
   FUNC10(hDC, point.x, point.y + wc, &p);
   FUNC9(hDC, point.x, point.y + w);
   FUNC3( FUNC14(hDC, hPen));

   FUNC12(hwnd, hDC);
 }
}