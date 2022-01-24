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
typedef  int /*<<< orphan*/  numeric ;

/* Variables and functions */
 int FUNC0 (long,int /*<<< orphan*/ *) ; 

int
FUNC1(signed int int_val, numeric *var)
{
	/* implicit conversion */
	signed long int long_int = int_val;

	return FUNC0(long_int, var);
}