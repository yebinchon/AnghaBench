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
typedef  scalar_t__ Size ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

Size
FUNC3(Size s1, Size s2)
{
	Size		result;

	result = s1 + s2;
	/* We are assuming Size is an unsigned type here... */
	if (result < s1 || result < s2)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC2("requested shared memory size overflows size_t")));
	return result;
}