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
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct ffmpeg_muxer {scalar_t__ stop_ts; scalar_t__ save_ts; int mux_thread_joinable; int /*<<< orphan*/  mux_thread; int /*<<< orphan*/  muxing; int /*<<< orphan*/  keyframes; TYPE_1__ packets; int /*<<< orphan*/  cur_size; int /*<<< orphan*/  cur_time; } ;
struct encoder_packet {scalar_t__ sys_dts_usec; scalar_t__ type; scalar_t__ keyframe; scalar_t__ size; int /*<<< orphan*/  dts_usec; } ;

/* Variables and functions */
 scalar_t__ OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  OBS_OUTPUT_ENCODE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct ffmpeg_muxer*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct encoder_packet*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ffmpeg_muxer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct encoder_packet*,struct encoder_packet*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ffmpeg_muxer*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ffmpeg_muxer*) ; 
 scalar_t__ FUNC8 (struct ffmpeg_muxer*) ; 

__attribute__((used)) static void FUNC9(void *data, struct encoder_packet *packet)
{
	struct ffmpeg_muxer *stream = data;
	struct encoder_packet pkt;

	if (!FUNC0(stream))
		return;

	/* encoder failure */
	if (!packet) {
		FUNC2(stream, OBS_OUTPUT_ENCODE_ERROR);
		return;
	}

	if (FUNC8(stream)) {
		if (packet->sys_dts_usec >= stream->stop_ts) {
			FUNC2(stream, 0);
			return;
		}
	}

	FUNC3(&pkt, packet);
	FUNC6(stream, &pkt);

	if (!stream->packets.size)
		stream->cur_time = pkt.dts_usec;
	stream->cur_size += pkt.size;

	FUNC1(&stream->packets, packet, sizeof(*packet));

	if (packet->type == OBS_ENCODER_VIDEO && packet->keyframe)
		stream->keyframes++;

	if (stream->save_ts && packet->sys_dts_usec >= stream->save_ts) {
		if (FUNC4(&stream->muxing))
			return;

		if (stream->mux_thread_joinable) {
			FUNC5(stream->mux_thread, NULL);
			stream->mux_thread_joinable = false;
		}

		stream->save_ts = 0;
		FUNC7(stream);
	}
}