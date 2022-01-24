#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_10__ {int /*<<< orphan*/  Self; scalar_t__ minHeight; scalar_t__ verticalBorder; scalar_t__ hDefaultFont; scalar_t__ hFont; } ;
struct TYPE_9__ {int tmInternalLeading; scalar_t__ tmHeight; } ;
typedef  TYPE_1__ TEXTMETRICW ;
typedef  TYPE_2__ STATUS_INFO ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CYBORDER ; 
 int /*<<< orphan*/  SP_PANE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static UINT
FUNC10(STATUS_INFO *infoPtr)
{
    HTHEME theme;
    UINT height;
    TEXTMETRICW tm;
    int margin;

    FUNC0(infoPtr->hFont ? infoPtr->hFont : infoPtr->hDefaultFont, &tm);
    margin = (tm.tmInternalLeading ? tm.tmInternalLeading : 2);
    height = FUNC9(tm.tmHeight + margin + 2*FUNC2(SM_CYBORDER), infoPtr->minHeight) + infoPtr->verticalBorder;

    if ((theme = FUNC4(infoPtr->Self)))
    {
        /* Determine bar height from theme such that the content area is
         * textHeight pixels large */
        HDC hdc = FUNC1(infoPtr->Self);
        RECT r;

        FUNC7(&r, 0, 0, 0, FUNC9(infoPtr->minHeight, tm.tmHeight));
        if (FUNC6(FUNC3(theme, hdc, SP_PANE, 0, &r, &r)))
        {
            height = r.bottom - r.top;
        }
        FUNC5(infoPtr->Self, hdc);
    }

    FUNC8("    textHeight=%d+%d, final height=%d\n", tm.tmHeight, tm.tmInternalLeading, height);
    return height;
}