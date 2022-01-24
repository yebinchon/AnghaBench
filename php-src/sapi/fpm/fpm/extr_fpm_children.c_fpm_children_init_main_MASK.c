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
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_2__ {int emergency_restart_threshold; scalar_t__ emergency_restart_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_CLEANUP_ALL ; 
 int /*<<< orphan*/  fpm_children_cleanup ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ fpm_global_config ; 
 int /*<<< orphan*/  last_faults ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3() /* {{{ */
{
	if (fpm_global_config.emergency_restart_threshold &&
		fpm_global_config.emergency_restart_interval) {

		last_faults = FUNC1(sizeof(time_t) * fpm_global_config.emergency_restart_threshold);

		if (!last_faults) {
			return -1;
		}

		FUNC2(last_faults, 0, sizeof(time_t) * fpm_global_config.emergency_restart_threshold);
	}

	if (0 > FUNC0(FPM_CLEANUP_ALL, fpm_children_cleanup, 0)) {
		return -1;
	}

	return 0;
}