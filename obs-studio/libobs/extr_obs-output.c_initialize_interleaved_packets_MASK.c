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
struct TYPE_4__ {size_t num; struct encoder_packet* array; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct obs_output {int received_audio; TYPE_2__ interleaved_packets; int /*<<< orphan*/  highest_video_ts; int /*<<< orphan*/  highest_audio_ts; TYPE_1__ context; int /*<<< orphan*/ * audio_offsets; int /*<<< orphan*/  video_offset; } ;
struct encoder_packet {scalar_t__ dts_usec; int /*<<< orphan*/  dts; int /*<<< orphan*/  pts; } ;
typedef  long long int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int MAX_AUDIO_MIXES ; 
 int /*<<< orphan*/  OBS_ENCODER_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (struct obs_output*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long long,long long,long long) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_output*,size_t) ; 
 struct encoder_packet* FUNC3 (struct obs_output*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_output*,struct encoder_packet**,struct encoder_packet**,size_t) ; 
 size_t FUNC5 (struct obs_output*) ; 
 size_t FUNC6 (struct obs_output*) ; 

__attribute__((used)) static bool FUNC7(struct obs_output *output)
{
	struct encoder_packet *video;
	struct encoder_packet *audio[MAX_AUDIO_MIXES];
	struct encoder_packet *last_audio[MAX_AUDIO_MIXES];
	size_t audio_mixes = FUNC6(output);
	size_t start_idx;

	if (!FUNC4(output, &video, audio, audio_mixes))
		return false;

	for (size_t i = 0; i < audio_mixes; i++)
		last_audio[i] =
			FUNC3(output, OBS_ENCODER_AUDIO, i);

	/* ensure that there is audio past the first video packet */
	for (size_t i = 0; i < audio_mixes; i++) {
		if (last_audio[i]->dts_usec < video->dts_usec) {
			output->received_audio = false;
			return false;
		}
	}

	/* clear out excess starting audio if it hasn't been already */
	start_idx = FUNC5(output);
	if (start_idx) {
		FUNC2(output, start_idx);
		if (!FUNC4(output, &video, audio,
						 audio_mixes))
			return false;
	}

	/* get new offsets */
	output->video_offset = video->pts;
	for (size_t i = 0; i < audio_mixes; i++)
		output->audio_offsets[i] = audio[i]->dts;

#if DEBUG_STARTING_PACKETS == 1
	int64_t v = video->dts_usec;
	int64_t a = audio[0]->dts_usec;
	int64_t diff = v - a;

	blog(LOG_DEBUG,
	     "output '%s' offset for video: %lld, audio: %lld, "
	     "diff: %lldms",
	     output->context.name, v, a, diff / 1000LL);
#endif

	/* subtract offsets from highest TS offset variables */
	output->highest_audio_ts -= audio[0]->dts_usec;
	output->highest_video_ts -= video->dts_usec;

	/* apply new offsets to all existing packet DTS/PTS values */
	for (size_t i = 0; i < output->interleaved_packets.num; i++) {
		struct encoder_packet *packet =
			&output->interleaved_packets.array[i];
		FUNC0(output, packet);
	}

	return true;
}