#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* bottom; void* top; void* right; void* left; } ;
struct TYPE_10__ {void* cy; void* cx; } ;
typedef  TYPE_1__ SIZE ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_2__* LPRECT ;
typedef  scalar_t__ HTHEME ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  DFCS_SCROLLSIZEGRIP ; 
 int /*<<< orphan*/  DFC_SCROLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  SM_CXVSCROLL ; 
 int /*<<< orphan*/  SM_CYHSCROLL ; 
 int /*<<< orphan*/  SP_GRIPPER ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_DRAW ; 
 void* FUNC6 (void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8 (HTHEME theme, HDC hdc, LPRECT lpRect)
{
    RECT rc = *lpRect;

    FUNC5("draw size grip %s\n", FUNC7(lpRect));

    if (theme)
    {
        SIZE gripperSize;
        if (FUNC4 (FUNC3 (theme, hdc, SP_GRIPPER, 0, lpRect, 
            TS_DRAW, &gripperSize)))
        {
            rc.left = rc.right - gripperSize.cx;
            rc.top = rc.bottom - gripperSize.cy;
            if (FUNC4 (FUNC1(theme, hdc, SP_GRIPPER, 0, &rc, NULL)))
                return;
        }
    }

    rc.left = FUNC6( rc.left, rc.right - FUNC2(SM_CXVSCROLL) - 1 );
    rc.top  = FUNC6( rc.top, rc.bottom - FUNC2(SM_CYHSCROLL) - 1 );
    FUNC0( hdc, &rc, DFC_SCROLL, DFCS_SCROLLSIZEGRIP );
}