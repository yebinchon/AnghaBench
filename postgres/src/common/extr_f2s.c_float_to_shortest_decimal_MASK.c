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
 int /*<<< orphan*/  FLOAT_SHORTEST_DECIMAL_LEN ; 
 int /*<<< orphan*/  FUNC0 (float,char* const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

char *
FUNC2(float f)
{
	char	   *const result = (char *) FUNC1(FLOAT_SHORTEST_DECIMAL_LEN);

	FUNC0(f, result);
	return result;
}