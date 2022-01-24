#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int left; int top; int right; int bottom; } ;
struct TYPE_8__ {int cx; int cy; } ;
struct TYPE_10__ {int left; int top; int right; int bottom; } ;
struct TYPE_11__ {TYPE_1__ bmScaledSize; TYPE_3__ rcPage; } ;
struct TYPE_9__ {void* cx; void* cy; } ;
typedef  TYPE_2__ SIZE ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  HPEN ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOGPIXELSX ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  PS_DOT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int,int,int) ; 
 TYPE_5__ margins ; 
 TYPE_4__ preview ; 
 scalar_t__ FUNC9 (int,void*) ; 

__attribute__((used)) static void FUNC10(HDC hdc, int x, int y, float ratio)
{
    HPEN hPen, oldPen;
    SIZE dpi;
    RECT page_margin = preview.rcPage;

    dpi.cx = FUNC2(hdc, LOGPIXELSX);
    dpi.cy = FUNC2(hdc, LOGPIXELSY);

    FUNC8(&page_margin, preview.rcPage.left + margins.left, preview.rcPage.top + margins.top,
            preview.rcPage.right - margins.right, preview.rcPage.bottom - margins.bottom);

    page_margin.left = (int)((float)FUNC9(page_margin.left, dpi.cx) * ratio);
    page_margin.top = (int)((float)FUNC9(page_margin.top, dpi.cy) * ratio);
    page_margin.bottom = (int)((float)FUNC9(page_margin.bottom, dpi.cy) * ratio);
    page_margin.right = (int)((float)FUNC9(page_margin.right, dpi.cx) * ratio);

    FUNC5(&page_margin, x, y);

    hPen = FUNC0(PS_DOT, 1, FUNC6(0,0,0));
    oldPen = FUNC7(hdc, hPen);

    FUNC4(hdc, x, page_margin.top, NULL);
    FUNC3(hdc, x + preview.bmScaledSize.cx, page_margin.top);
    FUNC4(hdc, x, page_margin.bottom, NULL);
    FUNC3(hdc, x + preview.bmScaledSize.cx, page_margin.bottom);

    FUNC4(hdc, page_margin.left, y, NULL);
    FUNC3(hdc, page_margin.left, y + preview.bmScaledSize.cy);
    FUNC4(hdc, page_margin.right, y, NULL);
    FUNC3(hdc, page_margin.right, y + preview.bmScaledSize.cy);

    FUNC7(hdc, oldPen);
    FUNC1(hPen);
}