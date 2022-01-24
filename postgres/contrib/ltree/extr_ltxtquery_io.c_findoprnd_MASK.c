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
typedef  size_t int32 ;
struct TYPE_3__ {scalar_t__ type; int left; size_t val; } ;
typedef  TYPE_1__ ITEM ;

/* Variables and functions */
 scalar_t__ VAL ; 
 scalar_t__ VALTRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void
FUNC1(ITEM *ptr, int32 *pos)
{
	/* since this function recurses, it could be driven to stack overflow. */
	FUNC0();

	if (ptr[*pos].type == VAL || ptr[*pos].type == VALTRUE)
	{
		ptr[*pos].left = 0;
		(*pos)++;
	}
	else if (ptr[*pos].val == (int32) '!')
	{
		ptr[*pos].left = 1;
		(*pos)++;
		FUNC1(ptr, pos);
	}
	else
	{
		ITEM	   *curitem = &ptr[*pos];
		int32		tmp = *pos;

		(*pos)++;
		FUNC1(ptr, pos);
		curitem->left = *pos - tmp;
		FUNC1(ptr, pos);
	}
}