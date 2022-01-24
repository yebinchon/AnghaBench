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
typedef  size_t uint16 ;
typedef  int /*<<< orphan*/ * RD_HCURSOR ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/ ** g_cursorcache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(uint16 cache_idx, RD_HCURSOR cursor)
{
	RD_HCURSOR old;

	if (cache_idx < FUNC0(g_cursorcache))
	{
		old = g_cursorcache[cache_idx];
		if (old != NULL)
			FUNC2(old);

		g_cursorcache[cache_idx] = cursor;
	}
	else
	{
		FUNC1("put cursor %d\n", cache_idx);
	}
}