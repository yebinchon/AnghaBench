#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_10__ {int /*<<< orphan*/  spin_delay_count; } ;
typedef  TYPE_1__ lwlock_stats ;
struct TYPE_12__ {int /*<<< orphan*/  state; } ;
struct TYPE_11__ {int delays; } ;
typedef  TYPE_2__ SpinDelayStatus ;
typedef  TYPE_3__ LWLock ;

/* Variables and functions */
 int LW_FLAG_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(LWLock *lock)
{
	uint32		old_state;
#ifdef LWLOCK_STATS
	lwlock_stats *lwstats;
	uint32		delays = 0;

	lwstats = get_lwlock_stats_entry(lock);
#endif

	while (true)
	{
		/* always try once to acquire lock directly */
		old_state = FUNC4(&lock->state, LW_FLAG_LOCKED);
		if (!(old_state & LW_FLAG_LOCKED))
			break;				/* got lock */

		/* and then spin without atomic operations until lock is released */
		{
			SpinDelayStatus delayStatus;

			FUNC2(&delayStatus);

			while (old_state & LW_FLAG_LOCKED)
			{
				FUNC3(&delayStatus);
				old_state = FUNC5(&lock->state);
			}
#ifdef LWLOCK_STATS
			delays += delayStatus.delays;
#endif
			FUNC0(&delayStatus);
		}

		/*
		 * Retry. The lock might obviously already be re-acquired by the time
		 * we're attempting to get it again.
		 */
	}

#ifdef LWLOCK_STATS
	lwstats->spin_delay_count += delays;
#endif
}