#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int top; int bottom; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_12__ {int /*<<< orphan*/  hwndSelf; TYPE_7__ old3angle; scalar_t__ l; } ;
struct TYPE_11__ {int y; scalar_t__ x; } ;
struct TYPE_10__ {int bottom; int top; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBRUSH ;
typedef  TYPE_3__ CCPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_BRUSH ; 
 int /*<<< orphan*/  COLOR_BTNFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  GCLP_HBRBACKGROUND ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_COLOR_GRAPH ; 
 int /*<<< orphan*/  IDC_COLOR_LUMBAR ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAXVERT ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC15(CCPRIV *infoPtr)
{
 HDC hDC;
 long temp;
 int w = FUNC10(FUNC5()) / 2;
 POINT points[3];
 int height;
 int oben;
 RECT rect;
 HBRUSH hbr;
 HWND hwnd = FUNC6(infoPtr->hwndSelf, IDC_COLOR_LUMBAR);

 if (FUNC9( FUNC6(infoPtr->hwndSelf, IDC_COLOR_GRAPH)))   /* if full size */
 {
   FUNC3(hwnd, &rect);
   height = rect.bottom;
   hDC = FUNC4(infoPtr->hwndSelf);
   points[0].y = rect.top;
   points[0].x = rect.right;                  /*  |  /|  */
   FUNC0(hwnd, points);              /*  | / |  */
   FUNC13(infoPtr->hwndSelf, points); /*  |<  |  */
   oben = points[0].y;                        /*  | \ |  */
                                              /*  |  \|  */
   temp = (long)height * (long)infoPtr->l;
   points[0].x += 1;
   points[0].y = oben + height - temp / (long)MAXVERT;
   points[1].y = points[0].y + w;
   points[2].y = points[0].y - w;
   points[2].x = points[1].x = points[0].x + w;

   hbr = (HBRUSH)FUNC2( hwnd, GCLP_HBRBACKGROUND);
   if (!hbr) hbr = FUNC8(COLOR_BTNFACE);
   FUNC1(hDC, &infoPtr->old3angle, hbr);
   infoPtr->old3angle.left  = points[0].x;
   infoPtr->old3angle.right = points[1].x + 1;
   infoPtr->old3angle.top   = points[2].y - 1;
   infoPtr->old3angle.bottom= points[1].y + 1;

   hbr = FUNC14(hDC, FUNC7(BLACK_BRUSH));
   FUNC11(hDC, points, 3);
   FUNC14(hDC, hbr);

   FUNC12(infoPtr->hwndSelf, hDC);
 }
}