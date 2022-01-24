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
struct audio_output_info {int /*<<< orphan*/  format; int /*<<< orphan*/  input_param; int /*<<< orphan*/  input_callback; int /*<<< orphan*/  speakers; } ;
struct audio_output {int channels; int planes; int block_size; int initialized; int /*<<< orphan*/  thread; int /*<<< orphan*/  stop_event; int /*<<< orphan*/  input_mutex; int /*<<< orphan*/  input_param; int /*<<< orphan*/  input_cb; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
typedef  struct audio_output audio_t ;

/* Variables and functions */
 int AUDIO_OUTPUT_FAIL ; 
 int AUDIO_OUTPUT_INVALIDPARAM ; 
 int AUDIO_OUTPUT_SUCCESS ; 
 int /*<<< orphan*/  OS_EVENT_TYPE_MANUAL ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct audio_output*) ; 
 int /*<<< orphan*/  audio_thread ; 
 struct audio_output* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct audio_output_info*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct audio_output*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct audio_output_info*) ; 

int FUNC12(audio_t **audio, struct audio_output_info *info)
{
	struct audio_output *out;
	pthread_mutexattr_t attr;
	bool planar = FUNC4(info->format);

	if (!FUNC11(info))
		return AUDIO_OUTPUT_INVALIDPARAM;

	out = FUNC1(sizeof(struct audio_output));
	if (!out)
		goto fail;

	FUNC5(&out->info, info, sizeof(struct audio_output_info));
	out->channels = FUNC3(info->speakers);
	out->planes = planar ? out->channels : 1;
	out->input_cb = info->input_callback;
	out->input_param = info->input_param;
	out->block_size = (planar ? 1 : out->channels) *
			  FUNC2(info->format);

	if (FUNC9(&attr) != 0)
		goto fail;
	if (FUNC10(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
		goto fail;
	if (FUNC8(&out->input_mutex, &attr) != 0)
		goto fail;
	if (FUNC6(&out->stop_event, OS_EVENT_TYPE_MANUAL) != 0)
		goto fail;
	if (FUNC7(&out->thread, NULL, audio_thread, out) != 0)
		goto fail;

	out->initialized = true;
	*audio = out;
	return AUDIO_OUTPUT_SUCCESS;

fail:
	FUNC0(out);
	return AUDIO_OUTPUT_FAIL;
}