#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bmp ;
struct TYPE_11__ {scalar_t__ bmHeight; scalar_t__ bmWidth; } ;
struct TYPE_8__ {scalar_t__ top; scalar_t__ left; scalar_t__ bottom; scalar_t__ right; } ;
struct TYPE_10__ {TYPE_1__ rcPaint; int /*<<< orphan*/  hdc; } ;
struct TYPE_9__ {scalar_t__ CurrentY; scalar_t__ CurrentX; } ;
typedef  TYPE_2__ SCROLLSTATE ;
typedef  TYPE_3__ PAINTSTRUCT ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_4__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CF_BITMAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

void FUNC7(PAINTSTRUCT ps, SCROLLSTATE state, DWORD dwRop)
{
    HDC hdcMem;
    HBITMAP hBitmap;
    BITMAP bmp;
    LONG bmWidth, bmHeight;

    hdcMem = FUNC1(ps.hdc);
    if (!hdcMem)
        return;

    hBitmap = (HBITMAP)FUNC3(CF_BITMAP);
    FUNC4(hBitmap, sizeof(bmp), &bmp);

    FUNC5(hdcMem, hBitmap);

    bmWidth  = FUNC6(ps.rcPaint.right  - ps.rcPaint.left, bmp.bmWidth  - ps.rcPaint.left - state.CurrentX);
    bmHeight = FUNC6(ps.rcPaint.bottom - ps.rcPaint.top , bmp.bmHeight - ps.rcPaint.top  - state.CurrentY);

    FUNC0(ps.hdc,
           ps.rcPaint.left,
           ps.rcPaint.top,
           bmWidth,
           bmHeight,
           hdcMem,
           ps.rcPaint.left + state.CurrentX,
           ps.rcPaint.top  + state.CurrentY,
           dwRop);

    FUNC2(hdcMem);
}