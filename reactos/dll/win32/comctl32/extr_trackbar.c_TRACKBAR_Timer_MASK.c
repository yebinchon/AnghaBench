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
struct TYPE_4__ {int flags; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int TB_AUTO_PAGE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC3 (TRACKBAR_INFO *infoPtr)
{
    if (infoPtr->flags & TB_AUTO_PAGE) {
	POINT pt;
	if (FUNC0(&pt))
	    if (FUNC1(infoPtr->hwndSelf, &pt))
		FUNC2(infoPtr, pt);
    }
    return 0;
}