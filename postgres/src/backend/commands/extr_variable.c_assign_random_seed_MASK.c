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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  setseed ; 

void
FUNC2(double newval, void *extra)
{
	/* We'll do this at most once for any setting of the GUC variable */
	if (*((int *) extra))
		FUNC0(setseed, FUNC1(newval));
	*((int *) extra) = 0;
}