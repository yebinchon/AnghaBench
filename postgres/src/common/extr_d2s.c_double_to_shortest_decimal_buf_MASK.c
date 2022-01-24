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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const DOUBLE_SHORTEST_DECIMAL_LEN ; 
 int FUNC1 (double,char*) ; 

int
FUNC2(double f, char *result)
{
	const int	index = FUNC1(f, result);

	/* Terminate the string. */
	FUNC0(index < DOUBLE_SHORTEST_DECIMAL_LEN);
	result[index] = '\0';
	return index;
}