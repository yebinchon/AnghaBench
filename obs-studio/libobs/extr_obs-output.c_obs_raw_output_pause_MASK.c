#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ts_start; } ;
struct TYPE_7__ {TYPE_2__ pause; } ;
typedef  TYPE_1__ obs_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(obs_output_t *output, bool pause)
{
	bool success;
	uint64_t closest_v_ts;

	FUNC4(&output->pause.mutex);
	closest_v_ts = FUNC1(&output->pause);
	if (pause) {
		success = FUNC2(&output->pause);
		if (success)
			output->pause.ts_start = closest_v_ts;
	} else {
		success = FUNC3(&output->pause);
		if (success)
			FUNC0(&output->pause, closest_v_ts);
	}
	FUNC5(&output->pause.mutex);

	return success;
}