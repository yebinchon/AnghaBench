#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ x; void* y; } ;
struct TYPE_8__ {scalar_t__ right; } ;
struct TYPE_7__ {int /*<<< orphan*/  Self; int /*<<< orphan*/  Notify; } ;
typedef  TYPE_1__ STATUS_INFO ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ POINT ;
typedef  void* INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HTBOTTOMLEFT ; 
 int /*<<< orphan*/  HTBOTTOMRIGHT ; 
 int /*<<< orphan*/  HTERROR ; 
 int SBARS_SIZEGRIP ; 
 int /*<<< orphan*/  SM_CXVSCROLL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int WS_EX_LAYOUTRTL ; 
 int WS_MAXIMIZE ; 

__attribute__((used)) static BOOL
FUNC4 (const STATUS_INFO *infoPtr, INT x, INT y)
{
    if ((FUNC2 (infoPtr->Self, GWL_STYLE) & SBARS_SIZEGRIP)
            && !(FUNC2 (infoPtr->Notify, GWL_STYLE) & WS_MAXIMIZE)) {
	RECT  rect;
	POINT pt;

	FUNC0 (infoPtr->Self, &rect);

	pt.x = x;
	pt.y = y;
	FUNC3 (infoPtr->Self, &pt);

	if (pt.x >= rect.right - FUNC1(SM_CXVSCROLL))
        {
            if (FUNC2( infoPtr->Self, GWL_EXSTYLE ) & WS_EX_LAYOUTRTL) return HTBOTTOMLEFT;
	    else return HTBOTTOMRIGHT;
        }
    }

    return HTERROR;
}