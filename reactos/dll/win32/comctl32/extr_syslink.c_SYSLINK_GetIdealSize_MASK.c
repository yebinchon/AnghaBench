#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int right; scalar_t__ bottom; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_9__ {int cx; scalar_t__ cy; } ;
struct TYPE_8__ {int /*<<< orphan*/  Self; int /*<<< orphan*/  Font; } ;
typedef  TYPE_1__ SYSLINK_INFO ;
typedef  TYPE_2__ SIZE ;
typedef  TYPE_3__ RECT ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LONG FUNC4 (const SYSLINK_INFO *infoPtr, int cxMaxWidth, SIZE *lpSize)
{
    RECT rc;
    HDC hdc;

    rc.left = rc.top = rc.bottom = 0;
    rc.right = cxMaxWidth;

    hdc = FUNC0(infoPtr->Self);
    if (hdc != NULL)
    {
        HGDIOBJ hOldFont = FUNC3(hdc, infoPtr->Font);

        FUNC2(infoPtr, hdc, &rc);

        FUNC3(hdc, hOldFont);
        FUNC1(infoPtr->Self, hdc);

        lpSize->cx = rc.right;
        lpSize->cy = rc.bottom;
    }

    return rc.bottom;
}