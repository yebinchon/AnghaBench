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
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ clrBtnShadow; scalar_t__ clrBtnHighlight; } ;
struct TYPE_10__ {int top; int bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct TYPE_9__ {scalar_t__ clrBtnShadow; scalar_t__ clrBtnHighlight; } ;
typedef  TYPE_1__ TOOLBAR_INFO ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ COLORREF ;

/* Variables and functions */
 scalar_t__ CLR_DEFAULT ; 
 int /*<<< orphan*/  ETO_OPAQUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_4__ comctl32_color ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5 (const RECT *lpRect, HDC hdc,
                             const TOOLBAR_INFO *infoPtr)
{
    RECT myrect;
    COLORREF oldcolor, newcolor;

    myrect.left = lpRect->left;
    myrect.right = lpRect->right;
    myrect.top = lpRect->top + (lpRect->bottom - lpRect->top - 2)/2;
    myrect.bottom = myrect.top + 1;

    FUNC1 (&myrect, -2, 0);

    FUNC3("rect=(%s)\n", FUNC4(&myrect));

    newcolor = (infoPtr->clrBtnShadow == CLR_DEFAULT) ?
	        comctl32_color.clrBtnShadow : infoPtr->clrBtnShadow;
    oldcolor = FUNC2 (hdc, newcolor);
    FUNC0 (hdc, 0, 0, ETO_OPAQUE, &myrect, 0, 0, 0);

    myrect.top = myrect.bottom;
    myrect.bottom = myrect.top + 1;

    newcolor = (infoPtr->clrBtnHighlight == CLR_DEFAULT) ?
	        comctl32_color.clrBtnHighlight : infoPtr->clrBtnHighlight;
    FUNC2 (hdc, newcolor);
    FUNC0 (hdc, 0, 0, ETO_OPAQUE, &myrect, 0, 0, 0);

    FUNC2 (hdc, oldcolor);
}