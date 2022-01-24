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
typedef  int uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static inline bool FUNC4(void)
{
	bool stop_requested = false;

	if (FUNC0()) {
		static uint64_t last_keepalive_check = 0;
		uint64_t cur_time = FUNC3();
		bool alive = true;

		if (cur_time - last_keepalive_check > 5000000000) {
			alive = FUNC1();
			last_keepalive_check = cur_time;
		}

		stop_requested = FUNC2() || !alive;
	}

	return stop_requested;
}