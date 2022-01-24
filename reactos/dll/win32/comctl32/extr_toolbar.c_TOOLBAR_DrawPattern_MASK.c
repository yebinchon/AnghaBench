#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hdc; } ;
struct TYPE_8__ {int /*<<< orphan*/  clrBtnFace; int /*<<< orphan*/  clrBtnHighlight; int /*<<< orphan*/  hbrMonoDither; TYPE_1__ nmcd; } ;
struct TYPE_7__ {int right; int left; int bottom; int top; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ NMTBCUSTOMDRAW ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PATCOPY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXEDGE ; 
 int /*<<< orphan*/  SM_CYEDGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (const RECT *lpRect, const NMTBCUSTOMDRAW *tbcd)
{
    HDC hdc = tbcd->nmcd.hdc;
    HBRUSH hbr = FUNC2 (hdc, tbcd->hbrMonoDither);
    COLORREF clrTextOld;
    COLORREF clrBkOld;
    INT cx = lpRect->right - lpRect->left;
    INT cy = lpRect->bottom - lpRect->top;
    INT cxEdge = FUNC0(SM_CXEDGE);
    INT cyEdge = FUNC0(SM_CYEDGE);
    clrTextOld = FUNC4(hdc, tbcd->clrBtnHighlight);
    clrBkOld = FUNC3(hdc, tbcd->clrBtnFace);
    FUNC1 (hdc, lpRect->left + cxEdge, lpRect->top + cyEdge,
            cx - (2 * cxEdge), cy - (2 * cyEdge), PATCOPY);
    FUNC3(hdc, clrBkOld);
    FUNC4(hdc, clrTextOld);
    FUNC2 (hdc, hbr);
}