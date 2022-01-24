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
struct obs_source_frame2 {int /*<<< orphan*/  color_range_max; int /*<<< orphan*/  color_range_min; int /*<<< orphan*/  color_matrix; int /*<<< orphan*/  flip; int /*<<< orphan*/  format; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; int /*<<< orphan*/  range; } ;
struct obs_source_frame {int full_range; int /*<<< orphan*/  color_range_max; int /*<<< orphan*/  color_range_min; int /*<<< orphan*/  color_matrix; int /*<<< orphan*/  flip; int /*<<< orphan*/  format; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  obs_source_t ;
typedef  enum video_range_type { ____Placeholder_video_range_type } video_range_type ;

/* Variables and functions */
 size_t MAX_AV_PLANES ; 
 int VIDEO_RANGE_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct obs_source_frame*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(obs_source_t *source,
			      const struct obs_source_frame2 *frame)
{
	if (!frame) {
		FUNC1(source, NULL);
		return;
	}

	struct obs_source_frame new_frame;
	enum video_range_type range =
		FUNC2(frame->format, frame->range);

	for (size_t i = 0; i < MAX_AV_PLANES; i++) {
		new_frame.data[i] = frame->data[i];
		new_frame.linesize[i] = frame->linesize[i];
	}

	new_frame.width = frame->width;
	new_frame.height = frame->height;
	new_frame.timestamp = frame->timestamp;
	new_frame.format = frame->format;
	new_frame.full_range = range == VIDEO_RANGE_FULL;
	new_frame.flip = frame->flip;

	FUNC0(&new_frame.color_matrix, &frame->color_matrix,
	       sizeof(frame->color_matrix));
	FUNC0(&new_frame.color_range_min, &frame->color_range_min,
	       sizeof(frame->color_range_min));
	FUNC0(&new_frame.color_range_max, &frame->color_range_max,
	       sizeof(frame->color_range_max));

	FUNC1(source, &new_frame);
}