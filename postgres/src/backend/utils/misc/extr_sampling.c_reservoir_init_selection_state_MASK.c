#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  randstate; int /*<<< orphan*/  W; } ;
typedef  TYPE_1__* ReservoirState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(ReservoirState rs, int n)
{
	/*
	 * Reservoir sampling is not used anywhere where it would need to return
	 * repeatable results so we can initialize it randomly.
	 */
	FUNC4(FUNC2(), rs->randstate);

	/* Initial value of W (for use when Algorithm Z is first applied) */
	rs->W = FUNC0(-FUNC1(FUNC3(rs->randstate)) / n);
}