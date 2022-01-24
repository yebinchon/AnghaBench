#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_t ;
struct video_output_info {int /*<<< orphan*/  fps_num; int /*<<< orphan*/  fps_den; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {int /*<<< orphan*/  timebase_den; int /*<<< orphan*/  timebase_num; int /*<<< orphan*/ * media; TYPE_1__ info; } ;
typedef  TYPE_2__ obs_encoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct video_output_info* FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(obs_encoder_t *encoder, video_t *video)
{
	const struct video_output_info *voi;

	if (!FUNC2(encoder, "obs_encoder_set_video"))
		return;
	if (encoder->info.type != OBS_ENCODER_VIDEO) {
		FUNC0(LOG_WARNING,
		     "obs_encoder_set_video: "
		     "encoder '%s' is not a video encoder",
		     FUNC1(encoder));
		return;
	}
	if (!video)
		return;

	voi = FUNC3(video);

	encoder->media = video;
	encoder->timebase_num = voi->fps_den;
	encoder->timebase_den = voi->fps_num;
}