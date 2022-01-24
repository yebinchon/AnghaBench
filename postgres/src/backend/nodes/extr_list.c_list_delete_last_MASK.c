#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

List *
FUNC4(List *list)
{
	FUNC0(list);

	if (list == NIL)
		return NIL;				/* would an error be better? */

	/* list_truncate won't free list if it goes to empty, but this should */
	if (FUNC2(list) <= 1)
	{
		FUNC1(list);
		return NIL;
	}

	return FUNC3(list, FUNC2(list) - 1);
}