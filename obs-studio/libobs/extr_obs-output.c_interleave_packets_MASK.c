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
struct obs_output {int /*<<< orphan*/  interleaved_mutex; scalar_t__ received_video; scalar_t__ received_audio; scalar_t__ active_delay_ns; } ;
struct encoder_packet {scalar_t__ type; int /*<<< orphan*/  dts_usec; int /*<<< orphan*/  keyframe; int /*<<< orphan*/  track_idx; } ;

/* Variables and functions */
 scalar_t__ OBS_ENCODER_AUDIO ; 
 scalar_t__ OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct obs_output*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_output*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_output*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_output*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_output*,struct encoder_packet*) ; 
 scalar_t__ FUNC5 (struct obs_output*) ; 
 int /*<<< orphan*/  FUNC6 (struct obs_output*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC7 (struct encoder_packet*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC8 (struct encoder_packet*) ; 
 scalar_t__ FUNC9 (struct obs_output*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct obs_output*) ; 
 int /*<<< orphan*/  FUNC13 (struct obs_output*) ; 
 int /*<<< orphan*/  FUNC14 (struct obs_output*,struct encoder_packet*) ; 

__attribute__((used)) static void FUNC15(void *data, struct encoder_packet *packet)
{
	struct obs_output *output = data;
	struct encoder_packet out;
	bool was_started;

	if (!FUNC0(output))
		return;

	if (packet->type == OBS_ENCODER_AUDIO)
		packet->track_idx = FUNC4(output, packet);

	FUNC10(&output->interleaved_mutex);

	/* if first video frame is not a keyframe, discard until received */
	if (!output->received_video && packet->type == OBS_ENCODER_VIDEO &&
	    !packet->keyframe) {
		FUNC3(output, packet->dts_usec);
		FUNC11(&output->interleaved_mutex);

		if (output->active_delay_ns)
			FUNC8(packet);
		return;
	}

	was_started = output->received_audio && output->received_video;

	if (output->active_delay_ns)
		out = *packet;
	else
		FUNC7(&out, packet);

	if (was_started)
		FUNC1(output, &out);
	else
		FUNC2(output, packet);

	FUNC6(output, &out);
	FUNC14(output, &out);

	/* when both video and audio have been received, we're ready
	 * to start sending out packets (one at a time) */
	if (output->received_audio && output->received_video) {
		if (!was_started) {
			if (FUNC9(output)) {
				if (FUNC5(output)) {
					FUNC12(output);
					FUNC13(output);
				}
			}
		} else {
			FUNC13(output);
		}
	}

	FUNC11(&output->interleaved_mutex);
}