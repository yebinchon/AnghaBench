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
struct video_output_info {int dummy; } ;
struct obs_video_info {scalar_t__ gpu_conversion; int /*<<< orphan*/  scale_type; int /*<<< orphan*/  output_height; int /*<<< orphan*/  output_width; int /*<<< orphan*/  base_height; int /*<<< orphan*/  base_width; } ;
struct obs_core_video {int thread_initialized; struct obs_video_info ovi; int /*<<< orphan*/  video_thread; int /*<<< orphan*/  gpu_encoder_mutex; int /*<<< orphan*/  graphics; int /*<<< orphan*/  video; int /*<<< orphan*/  scale_type; scalar_t__ gpu_conversion; int /*<<< orphan*/  output_height; int /*<<< orphan*/  output_width; int /*<<< orphan*/  base_height; int /*<<< orphan*/  base_width; } ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
struct TYPE_3__ {struct obs_core_video video; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int OBS_VIDEO_FAIL ; 
 int OBS_VIDEO_INVALID_PARAM ; 
 int OBS_VIDEO_SUCCESS ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int VIDEO_OUTPUT_INVALIDPARAM ; 
 int VIDEO_OUTPUT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct video_output_info*,struct obs_video_info*) ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/  obs_graphics_thread ; 
 int /*<<< orphan*/  FUNC4 (struct obs_video_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct obs_video_info*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct obs_core_video*,struct obs_video_info*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct video_output_info*) ; 

__attribute__((used)) static int FUNC12(struct obs_video_info *ovi)
{
	struct obs_core_video *video = &obs->video;
	struct video_output_info vi;
	pthread_mutexattr_t attr;
	int errorcode;

	FUNC3(&vi, ovi);
	video->base_width = ovi->base_width;
	video->base_height = ovi->base_height;
	video->output_width = ovi->output_width;
	video->output_height = ovi->output_height;
	video->gpu_conversion = ovi->gpu_conversion;
	video->scale_type = ovi->scale_type;

	FUNC10(video, ovi);

	errorcode = FUNC11(&video->video, &vi);

	if (errorcode != VIDEO_OUTPUT_SUCCESS) {
		if (errorcode == VIDEO_OUTPUT_INVALIDPARAM) {
			FUNC0(LOG_ERROR, "Invalid video parameters specified");
			return OBS_VIDEO_INVALID_PARAM;
		} else {
			FUNC0(LOG_ERROR, "Could not open video output");
		}
		return OBS_VIDEO_FAIL;
	}

	FUNC1(video->graphics);

	if (ovi->gpu_conversion && !FUNC4(ovi))
		return OBS_VIDEO_FAIL;
	if (!FUNC5(ovi))
		return OBS_VIDEO_FAIL;

	FUNC2();

	if (FUNC8(&attr) != 0)
		return OBS_VIDEO_FAIL;
	if (FUNC9(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
		return OBS_VIDEO_FAIL;
	if (FUNC7(&video->gpu_encoder_mutex, NULL) < 0)
		return OBS_VIDEO_FAIL;

	errorcode = FUNC6(&video->video_thread, NULL,
				   obs_graphics_thread, obs);
	if (errorcode != 0)
		return OBS_VIDEO_FAIL;

	video->thread_initialized = true;
	video->ovi = *ovi;
	return OBS_VIDEO_SUCCESS;
}