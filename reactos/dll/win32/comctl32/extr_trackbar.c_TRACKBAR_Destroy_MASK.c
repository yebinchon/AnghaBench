#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hwndSelf; struct TYPE_4__* tics; scalar_t__ hwndToolTip; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC5 (TRACKBAR_INFO *infoPtr)
{
    /* delete tooltip control */
    if (infoPtr->hwndToolTip)
    	FUNC1 (infoPtr->hwndToolTip);

    FUNC2 (infoPtr->tics);
    infoPtr->tics = NULL;

    FUNC4 (infoPtr->hwndSelf, 0, 0);
    FUNC0 (FUNC3 (infoPtr->hwndSelf));
    FUNC2 (infoPtr);

    return 0;
}