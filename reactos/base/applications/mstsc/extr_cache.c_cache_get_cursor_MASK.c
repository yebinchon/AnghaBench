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

RD_HCURSOR
FUNC2(uint16 cache_idx)
{
	RD_HCURSOR cursor;

	if (cache_idx < FUNC0(g_cursorcache))
	{
		cursor = g_cursorcache[cache_idx];
		if (cursor != NULL)
			return cursor;
	}

	FUNC1("get cursor %d\n", cache_idx);
	return NULL;
}