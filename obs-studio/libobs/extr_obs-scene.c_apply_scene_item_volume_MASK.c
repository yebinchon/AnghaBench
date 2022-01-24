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
typedef  unsigned long long uint64_t ;
struct TYPE_2__ {scalar_t__ num; struct item_action* array; } ;
struct obs_scene_item {int /*<<< orphan*/  actions_mutex; TYPE_1__ audio_actions; } ;
struct item_action {unsigned long long timestamp; } ;

/* Variables and functions */
 scalar_t__ AUDIO_OUTPUT_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (struct obs_scene_item*,float**,unsigned long long,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct obs_scene_item *item, float **buf,
				    uint64_t ts, size_t sample_rate)
{
	bool actions_pending;
	struct item_action action;

	FUNC1(&item->actions_mutex);

	actions_pending = item->audio_actions.num > 0;
	if (actions_pending)
		action = item->audio_actions.array[0];

	FUNC2(&item->actions_mutex);

	if (actions_pending) {
		uint64_t duration = (uint64_t)AUDIO_OUTPUT_FRAMES *
				    1000000000ULL / (uint64_t)sample_rate;

		if (!ts || action.timestamp < (ts + duration)) {
			FUNC0(item, buf, ts,
						       sample_rate);
			return true;
		}
	}

	return false;
}