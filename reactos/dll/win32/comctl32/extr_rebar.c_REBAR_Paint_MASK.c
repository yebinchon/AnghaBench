#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ fErase; int /*<<< orphan*/  rcPaint; } ;
struct TYPE_8__ {int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ PAINTSTRUCT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC6 (const REBAR_INFO *infoPtr, HDC hdc)
{
    if (hdc) {
        FUNC4("painting\n");
#ifdef __REACTOS__
        REBAR_EraseBkGnd (infoPtr, hdc);
#endif
        FUNC3 (infoPtr, hdc);
    } else {
        PAINTSTRUCT ps;
        hdc = FUNC0 (infoPtr->hwndSelf, &ps);
        FUNC4("painting (%s)\n", FUNC5(&ps.rcPaint));
        if (ps.fErase) {
            /* Erase area of paint if requested */
            FUNC2 (infoPtr, hdc);
        }
        FUNC3 (infoPtr, hdc);
	FUNC1 (infoPtr->hwndSelf, &ps);
    }

    return 0;
}