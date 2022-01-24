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
struct TYPE_15__ {int y; int x; } ;
struct TYPE_14__ {int /*<<< orphan*/  right; int /*<<< orphan*/  left; int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; } ;
struct TYPE_12__ {int /*<<< orphan*/  right; int /*<<< orphan*/  left; int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; } ;
struct TYPE_11__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct TYPE_13__ {int dwStyle; scalar_t__ lPos; TYPE_2__ rcChannel; TYPE_1__ rcThumb; } ;
typedef  TYPE_3__ TRACKBAR_INFO ;
typedef  TYPE_4__ RECT ;
typedef  TYPE_5__ POINT ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,TYPE_5__) ; 
 int TBS_VERT ; 
 scalar_t__ FUNC1 (TYPE_3__ const*,int) ; 

__attribute__((used)) static LONG
FUNC2 (const TRACKBAR_INFO *infoPtr, POINT clickPoint)
{
    RECT pageRect;

    if (infoPtr->dwStyle & TBS_VERT) {
	pageRect.top = infoPtr->rcChannel.top;
	pageRect.bottom = infoPtr->rcChannel.bottom;
	pageRect.left = infoPtr->rcThumb.left;
	pageRect.right = infoPtr->rcThumb.right;
    } else {
	pageRect.top = infoPtr->rcThumb.top;
	pageRect.bottom = infoPtr->rcThumb.bottom;
	pageRect.left = infoPtr->rcChannel.left;
	pageRect.right = infoPtr->rcChannel.right;
    }


    if (FUNC0(&pageRect, clickPoint))
    {
	int clickPlace = (infoPtr->dwStyle & TBS_VERT) ? clickPoint.y : clickPoint.x;

        LONG clickPos = FUNC1(infoPtr, clickPlace);

	return clickPos - infoPtr->lPos;
    }

    return 0;
}