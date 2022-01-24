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
struct video_output {int initialized; int /*<<< orphan*/  thread; int /*<<< orphan*/  update_semaphore; int /*<<< orphan*/  input_mutex; int /*<<< orphan*/  data_mutex; scalar_t__ frame_time; int /*<<< orphan*/  info; } ;
typedef  struct video_output video_t ;
typedef  scalar_t__ uint64_t ;
struct video_output_info {scalar_t__ fps_num; scalar_t__ fps_den; } ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int VIDEO_OUTPUT_FAIL ; 
 int VIDEO_OUTPUT_INVALIDPARAM ; 
 int VIDEO_OUTPUT_SUCCESS ; 
 struct video_output* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct video_output*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct video_output_info*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct video_output*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct video_output_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct video_output*) ; 
 int /*<<< orphan*/  video_thread ; 

int FUNC10(video_t **video, struct video_output_info *info)
{
	struct video_output *out;
	pthread_mutexattr_t attr;

	if (!FUNC8(info))
		return VIDEO_OUTPUT_INVALIDPARAM;

	out = FUNC0(sizeof(struct video_output));
	if (!out)
		goto fail;

	FUNC2(&out->info, info, sizeof(struct video_output_info));
	out->frame_time = (uint64_t)(1000000000.0 * (double)info->fps_den /
				     (double)info->fps_num);
	out->initialized = false;

	if (FUNC6(&attr) != 0)
		goto fail;
	if (FUNC7(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
		goto fail;
	if (FUNC5(&out->data_mutex, &attr) != 0)
		goto fail;
	if (FUNC5(&out->input_mutex, &attr) != 0)
		goto fail;
	if (FUNC3(&out->update_semaphore, 0) != 0)
		goto fail;
	if (FUNC4(&out->thread, NULL, video_thread, out) != 0)
		goto fail;

	FUNC1(out);

	out->initialized = true;
	*video = out;
	return VIDEO_OUTPUT_SUCCESS;

fail:
	FUNC9(out);
	return VIDEO_OUTPUT_FAIL;
}