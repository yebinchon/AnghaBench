#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {size_t num; struct item_action* array; } ;
struct obs_scene_item {int visible; int /*<<< orphan*/  source; TYPE_1__* parent; int /*<<< orphan*/  active_refs; int /*<<< orphan*/  actions_mutex; TYPE_2__ audio_actions; } ;
struct item_action {scalar_t__ timestamp; int visible; } ;
struct TYPE_3__ {int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int AUDIO_OUTPUT_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int /*<<< orphan*/ ) ; 
 float* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct obs_scene_item *item,
					   float **p_buf, uint64_t ts,
					   size_t sample_rate)
{
	bool cur_visible = item->visible;
	uint64_t frame_num = 0;
	size_t deref_count = 0;
	float *buf = NULL;

	if (p_buf) {
		if (!*p_buf)
			*p_buf = FUNC1(AUDIO_OUTPUT_FRAMES * sizeof(float));
		buf = *p_buf;
	}

	FUNC4(&item->actions_mutex);

	for (size_t i = 0; i < item->audio_actions.num; i++) {
		struct item_action action = item->audio_actions.array[i];
		uint64_t timestamp = action.timestamp;
		uint64_t new_frame_num;

		if (timestamp < ts)
			timestamp = ts;

		new_frame_num = (timestamp - ts) * (uint64_t)sample_rate /
				1000000000ULL;

		if (ts && new_frame_num >= AUDIO_OUTPUT_FRAMES)
			break;

		FUNC0(item->audio_actions, i--);

		item->visible = action.visible;
		if (!item->visible)
			deref_count++;

		if (buf && new_frame_num > frame_num) {
			for (; frame_num < new_frame_num; frame_num++)
				buf[frame_num] = cur_visible ? 1.0f : 0.0f;
		}

		cur_visible = item->visible;
	}

	if (buf) {
		for (; frame_num < AUDIO_OUTPUT_FRAMES; frame_num++)
			buf[frame_num] = cur_visible ? 1.0f : 0.0f;
	}

	FUNC5(&item->actions_mutex);

	while (deref_count--) {
		if (FUNC3(&item->active_refs) == 0) {
			FUNC2(item->parent->source,
						       item->source);
		}
	}
}