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
typedef  int /*<<< orphan*/  Tuplestorestate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int*) ; 

bool
FUNC2(Tuplestorestate *state, bool forward)
{
	void	   *tuple;
	bool		should_free;

	tuple = FUNC1(state, forward, &should_free);

	if (tuple)
	{
		if (should_free)
			FUNC0(tuple);
		return true;
	}
	else
	{
		return false;
	}
}