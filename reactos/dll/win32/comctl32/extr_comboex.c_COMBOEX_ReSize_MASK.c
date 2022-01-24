#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int flags; scalar_t__ hwndSelf; scalar_t__ hwndCombo; scalar_t__ himl; } ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_14__ {TYPE_1__ rcImage; } ;
struct TYPE_13__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_12__ {scalar_t__ cy; } ;
typedef  TYPE_2__ SIZE ;
typedef  TYPE_3__ RECT ;
typedef  scalar_t__ LONG ;
typedef  TYPE_4__ IMAGEINFO ;
typedef  TYPE_5__ COMBOEX_INFO ;

/* Variables and functions */
 int CBES_EX_NOSIZELIMIT ; 
 scalar_t__ CBE_EXTRA ; 
 int /*<<< orphan*/  CB_SETITEMHEIGHT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOREDRAW ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC7 (const COMBOEX_INFO *infoPtr)
{
    SIZE mysize;
    LONG cy;
    IMAGEINFO iinfo;

    FUNC0 (infoPtr, &mysize);
    cy = mysize.cy + CBE_EXTRA;
    if (infoPtr->himl && FUNC2(infoPtr->himl, 0, &iinfo)) {
	cy = FUNC6 (iinfo.rcImage.bottom - iinfo.rcImage.top, cy);
	FUNC5("upgraded height due to image:  height=%d\n", cy);
    }
    FUNC3 (infoPtr->hwndSelf, CB_SETITEMHEIGHT, -1, cy);
    if (infoPtr->hwndCombo) {
        FUNC3 (infoPtr->hwndCombo, CB_SETITEMHEIGHT, 0, cy);
	if ( !(infoPtr->flags & CBES_EX_NOSIZELIMIT)) {
	    RECT comboRect, ourRect;
	    FUNC1(infoPtr->hwndCombo, &comboRect);
            FUNC1(infoPtr->hwndSelf, &ourRect);
            if (comboRect.bottom > ourRect.bottom)
                FUNC4( infoPtr->hwndSelf, 0, 0, 0, ourRect.right - ourRect.left,
                              comboRect.bottom - comboRect.top,
                              SWP_NOMOVE | SWP_NOZORDER | SWP_NOACTIVATE | SWP_NOREDRAW );
	}
    }
}