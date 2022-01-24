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

/* Variables and functions */
 int /*<<< orphan*/  ECPG_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ; 
 scalar_t__ FUNC0 (long,long) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

char *
FUNC2(long size, int lineno)
{
	char	   *new = (char *) FUNC0(1L, size);

	if (!new)
	{
		FUNC1(lineno, ECPG_OUT_OF_MEMORY, ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, NULL);
		return NULL;
	}

	return new;
}