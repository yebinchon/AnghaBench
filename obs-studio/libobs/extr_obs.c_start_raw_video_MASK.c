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
typedef  int /*<<< orphan*/  video_t ;
struct video_scale_info {int dummy; } ;
struct obs_core_video {int /*<<< orphan*/  raw_active; } ;
struct TYPE_2__ {struct obs_core_video video; } ;

/* Variables and functions */
 TYPE_1__* obs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct video_scale_info const*,void (*) (void*,struct video_data*),void*) ; 

void FUNC2(video_t *v, const struct video_scale_info *conversion,
		     void (*callback)(void *param, struct video_data *frame),
		     void *param)
{
	struct obs_core_video *video = &obs->video;
	FUNC0(&video->raw_active);
	FUNC1(v, conversion, callback, param);
}