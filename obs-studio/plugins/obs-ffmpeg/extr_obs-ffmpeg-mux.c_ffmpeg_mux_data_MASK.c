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
struct ffmpeg_muxer {int sent_headers; scalar_t__ stop_ts; } ;
struct encoder_packet {scalar_t__ sys_dts_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_OUTPUT_ENCODE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct ffmpeg_muxer*) ; 
 int /*<<< orphan*/  FUNC1 (struct ffmpeg_muxer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ffmpeg_muxer*) ; 
 scalar_t__ FUNC3 (struct ffmpeg_muxer*) ; 
 int /*<<< orphan*/  FUNC4 (struct ffmpeg_muxer*,struct encoder_packet*) ; 

__attribute__((used)) static void FUNC5(void *data, struct encoder_packet *packet)
{
	struct ffmpeg_muxer *stream = data;

	if (!FUNC0(stream))
		return;

	/* encoder failure */
	if (!packet) {
		FUNC1(stream, OBS_OUTPUT_ENCODE_ERROR);
		return;
	}

	if (!stream->sent_headers) {
		if (!FUNC2(stream))
			return;

		stream->sent_headers = true;
	}

	if (FUNC3(stream)) {
		if (packet->sys_dts_usec >= stream->stop_ts) {
			FUNC1(stream, 0);
			return;
		}
	}

	FUNC4(stream, packet);
}