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
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ size; } ;
struct obs_output {int delay_cur_flags; scalar_t__ active_delay_ns; int /*<<< orphan*/  delay_mutex; TYPE_1__ delay_data; scalar_t__ reconnecting; } ;
struct delay_data {scalar_t__ ts; } ;
typedef  int /*<<< orphan*/  dd ;

/* Variables and functions */
 int OBS_OUTPUT_DELAY_PRESERVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct delay_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_output*,struct delay_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC5(struct obs_output *output, uint64_t t)
{
	uint64_t elapsed_time;
	struct delay_data dd;
	bool popped = false;
	bool preserve;

	/* ------------------------------------------------ */

	preserve = (output->delay_cur_flags & OBS_OUTPUT_DELAY_PRESERVE) != 0;

	FUNC3(&output->delay_mutex);

	if (output->delay_data.size) {
		FUNC0(&output->delay_data, &dd, sizeof(dd));
		elapsed_time = (t - dd.ts);

		if (preserve && output->reconnecting) {
			output->active_delay_ns = elapsed_time;

		} else if (elapsed_time > output->active_delay_ns) {
			FUNC1(&output->delay_data, NULL,
					    sizeof(dd));
			popped = true;
		}
	}

	FUNC4(&output->delay_mutex);

	/* ------------------------------------------------ */

	if (popped)
		FUNC2(output, &dd);

	return popped;
}