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
struct TYPE_4__ {size_t cache_size; } ;
struct TYPE_3__ {size_t num; struct video_input* array; } ;
struct video_output {size_t first_added; size_t available_frames; size_t last_added; int /*<<< orphan*/  data_mutex; int /*<<< orphan*/  skipped_frames; TYPE_2__ info; scalar_t__ frame_time; int /*<<< orphan*/  input_mutex; TYPE_1__ inputs; struct cached_frame_info* cache; } ;
struct video_input {int /*<<< orphan*/  param; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ,struct video_data*) ;} ;
struct video_data {int /*<<< orphan*/  timestamp; } ;
struct cached_frame_info {scalar_t__ count; int /*<<< orphan*/  skipped; struct video_data frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct video_input*,struct video_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct video_data*) ; 

__attribute__((used)) static inline bool FUNC5(struct video_output *video)
{
	struct cached_frame_info *frame_info;
	bool complete;
	bool skipped;

	/* -------------------------------- */

	FUNC1(&video->data_mutex);

	frame_info = &video->cache[video->first_added];

	FUNC2(&video->data_mutex);

	/* -------------------------------- */

	FUNC1(&video->input_mutex);

	for (size_t i = 0; i < video->inputs.num; i++) {
		struct video_input *input = video->inputs.array + i;
		struct video_data frame = frame_info->frame;

		if (FUNC3(input, &frame))
			input->callback(input->param, &frame);
	}

	FUNC2(&video->input_mutex);

	/* -------------------------------- */

	FUNC1(&video->data_mutex);

	frame_info->frame.timestamp += video->frame_time;
	complete = --frame_info->count == 0;
	skipped = frame_info->skipped > 0;

	if (complete) {
		if (++video->first_added == video->info.cache_size)
			video->first_added = 0;

		if (++video->available_frames == video->info.cache_size)
			video->last_added = video->first_added;
	} else if (skipped) {
		--frame_info->skipped;
		FUNC0(&video->skipped_frames);
	}

	FUNC2(&video->data_mutex);

	/* -------------------------------- */

	return complete;
}