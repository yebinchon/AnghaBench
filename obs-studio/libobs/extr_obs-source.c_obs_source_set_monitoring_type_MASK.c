#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int monitoring_type; int /*<<< orphan*/ * monitor; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  enum obs_monitoring_type { ____Placeholder_obs_monitoring_type } obs_monitoring_type ;

/* Variables and functions */
 scalar_t__ OBS_MONITORING_TYPE_NONE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 

void FUNC3(obs_source_t *source,
				    enum obs_monitoring_type type)
{
	bool was_on;
	bool now_on;

	if (!FUNC2(source, "obs_source_set_monitoring_type"))
		return;
	if (source->monitoring_type == type)
		return;

	was_on = source->monitoring_type != OBS_MONITORING_TYPE_NONE;
	now_on = type != OBS_MONITORING_TYPE_NONE;

	if (was_on != now_on) {
		if (!was_on) {
			source->monitor = FUNC0(source);
		} else {
			FUNC1(source->monitor);
			source->monitor = NULL;
		}
	}

	source->monitoring_type = type;
}