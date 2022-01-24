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
typedef  size_t UINT ;
struct TYPE_11__ {int /*<<< orphan*/ * crColor; } ;
struct TYPE_10__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_9__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  TYPE_1__* LPRECT ;
typedef  scalar_t__ HPEN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  TYPE_4__ COLOR_SCHEME ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t BDR_INNER ; 
 size_t BDR_OUTER ; 
 size_t BF_ADJUST ; 
 size_t BF_BOTTOM ; 
 size_t BF_BOTTOMLEFT ; 
 size_t BF_BOTTOMRIGHT ; 
 size_t BF_LEFT ; 
 size_t BF_RIGHT ; 
 size_t BF_TOP ; 
 size_t BF_TOPLEFT ; 
 size_t BF_TOPRIGHT ; 
 size_t COLOR_ACTIVEBORDER ; 
 size_t COLOR_BTNFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_PEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* LTInnerNormal ; 
 char* LTOuterNormal ; 
 int* LTRBInnerMono ; 
 int* LTRBOuterMono ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 size_t MY_BF_ACTIVEBORDER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  NULL_PEN ; 
 char* RBInnerNormal ; 
 char* RBOuterNormal ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL
FUNC8(HDC hdc, LPRECT rc, UINT uType, UINT uFlags, COLOR_SCHEME *scheme)
{
    signed char LTInnerI, LTOuterI;
    signed char RBInnerI, RBOuterI;
    HPEN LTInnerPen, LTOuterPen;
    HPEN RBInnerPen, RBOuterPen;
    RECT InnerRect = *rc;
    POINT SavePoint;
    HPEN SavePen;
    int LBpenplus = 0;
    int LTpenplus = 0;
    int RTpenplus = 0;
    int RBpenplus = 0;
    HBRUSH hbr;

    /* Init some vars */
    LTInnerPen = LTOuterPen = RBInnerPen = RBOuterPen = (HPEN)FUNC3(NULL_PEN);
    SavePen = (HPEN)FUNC6(hdc, LTInnerPen);

    /* Determine the colors of the edges */
    LTInnerI = LTInnerNormal[uType & (BDR_INNER|BDR_OUTER)];
    LTOuterI = LTOuterNormal[uType & (BDR_INNER|BDR_OUTER)];
    RBInnerI = RBInnerNormal[uType & (BDR_INNER|BDR_OUTER)];
    RBOuterI = RBOuterNormal[uType & (BDR_INNER|BDR_OUTER)];

    if ((uFlags & BF_BOTTOMLEFT) == BF_BOTTOMLEFT)
        LBpenplus = 1;
    if ((uFlags & BF_TOPRIGHT) == BF_TOPRIGHT)
        RTpenplus = 1;
    if ((uFlags & BF_BOTTOMRIGHT) == BF_BOTTOMRIGHT)
        RBpenplus = 1;
    if ((uFlags & BF_TOPLEFT) == BF_TOPLEFT)
        LTpenplus = 1;

    if ((uFlags & MY_BF_ACTIVEBORDER))
        hbr = FUNC0(scheme->crColor[COLOR_ACTIVEBORDER]);
    else
        hbr = FUNC0(scheme->crColor[COLOR_BTNFACE]);

    FUNC2(hdc, &InnerRect, hbr);
    FUNC1(hbr);

    FUNC5(hdc, 0, 0, &SavePoint);

    /* Draw the outer edge */
    if (LTOuterI != -1)
    {
        LTOuterPen = FUNC3(DC_PEN);
        FUNC6(hdc, LTOuterPen);
        FUNC7(hdc, scheme->crColor[LTOuterI]);
        if (uFlags & BF_TOP)
        {
            FUNC5(hdc, InnerRect.left, InnerRect.top, NULL);
            FUNC4(hdc, InnerRect.right, InnerRect.top);
        }
        if (uFlags & BF_LEFT)
        {
            FUNC5(hdc, InnerRect.left, InnerRect.top, NULL);
            FUNC4(hdc, InnerRect.left, InnerRect.bottom);
        }
    }

    if (RBOuterI != -1)
    {
        RBOuterPen = FUNC3(DC_PEN);
        FUNC6(hdc, RBOuterPen);
        FUNC7(hdc, scheme->crColor[RBOuterI]);
        if (uFlags & BF_BOTTOM)
        {
            FUNC5(hdc, InnerRect.left, InnerRect.bottom-1, NULL);
            FUNC4(hdc, InnerRect.right, InnerRect.bottom-1);
        }
        if (uFlags & BF_RIGHT)
        {
            FUNC5(hdc, InnerRect.right-1, InnerRect.top, NULL);
            FUNC4(hdc, InnerRect.right-1, InnerRect.bottom);
        }
    }

    /* Draw the inner edge */
    if (LTInnerI != -1)
    {
        LTInnerPen = FUNC3(DC_PEN);
        FUNC6(hdc, LTInnerPen);
        FUNC7(hdc, scheme->crColor[LTInnerI]);
        if (uFlags & BF_TOP)
        {
            FUNC5(hdc, InnerRect.left+LTpenplus, InnerRect.top+1, NULL);
            FUNC4(hdc, InnerRect.right-RTpenplus, InnerRect.top+1);
        }
        if (uFlags & BF_LEFT)
        {
            FUNC5(hdc, InnerRect.left+1, InnerRect.top+LTpenplus, NULL);
            FUNC4(hdc, InnerRect.left+1, InnerRect.bottom-LBpenplus);
        }
    }

    if (RBInnerI != -1)
    {
        RBInnerPen = FUNC3(DC_PEN);
        FUNC6(hdc, RBInnerPen);
        FUNC7(hdc, scheme->crColor[RBInnerI]);
        if (uFlags & BF_BOTTOM)
        {
            FUNC5(hdc, InnerRect.left+LBpenplus, InnerRect.bottom-2, NULL);
            FUNC4(hdc, InnerRect.right-RBpenplus, InnerRect.bottom-2);
        }
        if (uFlags & BF_RIGHT)
        {
            FUNC5(hdc, InnerRect.right-2, InnerRect.top+RTpenplus, NULL);
            FUNC4(hdc, InnerRect.right-2, InnerRect.bottom-RBpenplus);
        }
    }

    if (uFlags & BF_ADJUST)
    {
        int add = (LTRBInnerMono[uType & (BDR_INNER|BDR_OUTER)] != -1 ? 1 : 0)
                      + (LTRBOuterMono[uType & (BDR_INNER|BDR_OUTER)] != -1 ? 1 : 0);

        if (uFlags & BF_LEFT)
            InnerRect.left += add;
        if (uFlags & BF_RIGHT)
            InnerRect.right -= add;
        if (uFlags & BF_TOP)
            InnerRect.top += add;
        if (uFlags & BF_BOTTOM)
            InnerRect.bottom -= add;

        if (uFlags & BF_ADJUST)
            *rc = InnerRect;
    }

    /* Cleanup */
    FUNC6(hdc, SavePen);
    FUNC5(hdc, SavePoint.x, SavePoint.y, NULL);
    return TRUE;
}