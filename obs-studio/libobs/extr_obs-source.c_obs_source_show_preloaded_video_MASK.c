#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int async_active; scalar_t__ monitoring_type; int /*<<< orphan*/  audio_buf_mutex; int /*<<< orphan*/  last_frame_ts; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 scalar_t__ OBS_MONITORING_TYPE_MONITOR_ONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(obs_source_t *source)
{
	uint64_t sys_ts;

	if (!FUNC0(source, "obs_source_show_preloaded_video"))
		return;

	source->async_active = true;

	FUNC2(&source->audio_buf_mutex);
	sys_ts = (source->monitoring_type != OBS_MONITORING_TYPE_MONITOR_ONLY)
			 ? FUNC1()
			 : 0;
	FUNC5(source, source->last_frame_ts, sys_ts);
	FUNC4(source, sys_ts);
	FUNC3(&source->audio_buf_mutex);
}