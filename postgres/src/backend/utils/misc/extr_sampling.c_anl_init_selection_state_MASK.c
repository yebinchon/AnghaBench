#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* randstate; } ;

/* Variables and functions */
 double FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ oldrs ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 

double
FUNC5(int n)
{
	/* initialize if first time through */
	if (oldrs.randstate[0] == 0)
		FUNC4(FUNC2(), oldrs.randstate);

	/* Initial value of W (for use when Algorithm Z is first applied) */
	return FUNC0(-FUNC1(FUNC3(oldrs.randstate)) / n);
}