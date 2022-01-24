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
struct TYPE_3__ {scalar_t__ participants; scalar_t__ arrived; int /*<<< orphan*/  condition_variable; int /*<<< orphan*/  mutex; int /*<<< orphan*/  phase; int /*<<< orphan*/  static_party; } ;
typedef  TYPE_1__ Barrier ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool
FUNC4(Barrier *barrier, bool arrive)
{
	bool		release;
	bool		last;

	FUNC0(!barrier->static_party);

	FUNC2(&barrier->mutex);
	FUNC0(barrier->participants > 0);
	--barrier->participants;

	/*
	 * If any other participants are waiting and we were the last participant
	 * waited for, release them.  If no other participants are waiting, but
	 * this is a BarrierArriveAndDetach() call, then advance the phase too.
	 */
	if ((arrive || barrier->participants > 0) &&
		barrier->arrived == barrier->participants)
	{
		release = true;
		barrier->arrived = 0;
		++barrier->phase;
	}
	else
		release = false;

	last = barrier->participants == 0;
	FUNC3(&barrier->mutex);

	if (release)
		FUNC1(&barrier->condition_variable);

	return last;
}