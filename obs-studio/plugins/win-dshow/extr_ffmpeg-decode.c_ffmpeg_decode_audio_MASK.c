#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct obs_source_audio {scalar_t__ format; int /*<<< orphan*/  frames; int /*<<< orphan*/  speakers; int /*<<< orphan*/  samples_per_sec; int /*<<< orphan*/ * data; } ;
struct ffmpeg_decode {TYPE_5__* frame; TYPE_2__* decoder; int /*<<< orphan*/  packet_buffer; } ;
struct TYPE_10__ {int /*<<< orphan*/  nb_samples; int /*<<< orphan*/  format; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {scalar_t__ channels; } ;
struct TYPE_8__ {int size; int /*<<< orphan*/  data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 scalar_t__ AUDIO_FORMAT_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 size_t MAX_AV_PLANES ; 
 TYPE_5__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*,TYPE_5__*) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ffmpeg_decode*,int /*<<< orphan*/ *,size_t) ; 

bool FUNC8(struct ffmpeg_decode *decode, uint8_t *data,
			 size_t size, struct obs_source_audio *audio,
			 bool *got_output)
{
	AVPacket packet = {0};
	int got_frame = false;
	int ret = 0;

	*got_output = false;

	FUNC7(decode, data, size);

	FUNC2(&packet);
	packet.data = decode->packet_buffer;
	packet.size = (int)size;

	if (!decode->frame) {
		decode->frame = FUNC1();
		if (!decode->frame)
			return false;
	}

	if (data && size)
		ret = FUNC4(decode->decoder, &packet);
	if (ret == 0)
		ret = FUNC3(decode->decoder, decode->frame);

	got_frame = (ret == 0);

	if (ret == AVERROR_EOF || ret == FUNC0(EAGAIN))
		ret = 0;

	if (ret < 0)
		return false;
	else if (!got_frame)
		return true;

	for (size_t i = 0; i < MAX_AV_PLANES; i++)
		audio->data[i] = decode->frame->data[i];

	audio->samples_per_sec = decode->frame->sample_rate;
	audio->format = FUNC5(decode->frame->format);
	audio->speakers =
		FUNC6((uint8_t)decode->decoder->channels);

	audio->frames = decode->frame->nb_samples;

	if (audio->format == AUDIO_FORMAT_UNKNOWN)
		return false;

	*got_output = true;
	return true;
}