#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ val; int left; } ;
typedef  TYPE_1__ ITEM ;

/* Variables and functions */
 scalar_t__ VAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (void*,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC2(ITEM *curitem, void *checkval, bool calcnot,
		bool (*chkcond) (void *checkval, ITEM *item))
{
	/* since this function recurses, it could be driven to stack overflow */
	FUNC0();

	if (curitem->type == VAL)
		return (*chkcond) (checkval, curitem);
	else if (curitem->val == (int32) '!')
	{
		return calcnot ?
			((FUNC2(curitem - 1, checkval, calcnot, chkcond)) ? false : true)
			: true;
	}
	else if (curitem->val == (int32) '&')
	{
		if (FUNC2(curitem + curitem->left, checkval, calcnot, chkcond))
			return FUNC2(curitem - 1, checkval, calcnot, chkcond);
		else
			return false;
	}
	else
	{							/* |-operator */
		if (FUNC2(curitem + curitem->left, checkval, calcnot, chkcond))
			return true;
		else
			return FUNC2(curitem - 1, checkval, calcnot, chkcond);
	}
}