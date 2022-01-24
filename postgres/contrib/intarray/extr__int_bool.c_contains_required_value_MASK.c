#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ val; int left; } ;
typedef  TYPE_1__ ITEM ;

/* Variables and functions */
 scalar_t__ VAL ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static bool
FUNC1(ITEM *curitem)
{
	/* since this function recurses, it could be driven to stack overflow */
	FUNC0();

	if (curitem->type == VAL)
		return true;
	else if (curitem->val == (int32) '!')
	{
		/*
		 * Assume anything under a NOT is non-required.  For some cases with
		 * nested NOTs, we could prove there's a required value, but it seems
		 * unlikely to be worth the trouble.
		 */
		return false;
	}
	else if (curitem->val == (int32) '&')
	{
		/* If either side has a required value, we're good */
		if (FUNC1(curitem + curitem->left))
			return true;
		else
			return FUNC1(curitem - 1);
	}
	else
	{							/* |-operator */
		/* Both sides must have required values */
		if (FUNC1(curitem + curitem->left))
			return FUNC1(curitem - 1);
		else
			return false;
	}
}