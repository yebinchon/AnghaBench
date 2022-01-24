#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  end_data_capture_thread_active; int /*<<< orphan*/  stopping_event; int /*<<< orphan*/  active; scalar_t__ active_delay_ns; int /*<<< orphan*/  service; int /*<<< orphan*/  video; int /*<<< orphan*/  video_encoder; } ;
typedef  TYPE_1__ obs_output_t ;
typedef  int /*<<< orphan*/  encoded_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  default_encoded_callback ; 
 int /*<<< orphan*/  default_raw_video_callback ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  interleave_packets ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process_delay ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void *FUNC10(void *data)
{
	bool encoded, has_video, has_audio, has_service;
	encoded_callback_t encoded_callback;
	obs_output_t *output = data;

	FUNC0(output, 0, &encoded, &has_video, &has_audio,
		      &has_service);

	if (encoded) {
		if (output->active_delay_ns)
			encoded_callback = process_delay;
		else
			encoded_callback = (has_video && has_audio)
						   ? interleave_packets
						   : default_encoded_callback;

		if (has_video)
			FUNC2(output->video_encoder,
					 encoded_callback, output);
		if (has_audio)
			FUNC7(output, encoded_callback);
	} else {
		if (has_video)
			FUNC9(output->video,
				       default_raw_video_callback, output);
		if (has_audio)
			FUNC8(output);
	}

	if (has_service)
		FUNC4(output->service, false);

	if (output->active_delay_ns)
		FUNC3(output);

	FUNC1(output, "deactivate");
	FUNC5(&output->active, false);
	FUNC6(output->stopping_event);
	FUNC5(&output->end_data_capture_thread_active, false);

	return NULL;
}