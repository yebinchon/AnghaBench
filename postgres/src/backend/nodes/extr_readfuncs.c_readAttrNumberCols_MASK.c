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
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (int*) ; 

AttrNumber *
FUNC3(int numCols)
{
	int			tokenLength,
				i;
	const char *token;
	AttrNumber *attr_vals;

	if (numCols <= 0)
		return NULL;

	attr_vals = (AttrNumber *) FUNC1(numCols * sizeof(AttrNumber));
	for (i = 0; i < numCols; i++)
	{
		token = FUNC2(&tokenLength);
		attr_vals[i] = FUNC0(token);
	}

	return attr_vals;
}