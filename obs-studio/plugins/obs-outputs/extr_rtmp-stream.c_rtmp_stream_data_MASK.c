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
struct rtmp_stream {int got_first_video; int /*<<< orphan*/  send_sem; int /*<<< orphan*/  packets_mutex; int /*<<< orphan*/  start_dts_offset; int /*<<< orphan*/  encode_error; } ;
struct encoder_packet {scalar_t__ type; int /*<<< orphan*/  dts; } ;

/* Variables and functions */
 scalar_t__ OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct rtmp_stream*) ; 
 int FUNC1 (struct rtmp_stream*,struct encoder_packet*) ; 
 int FUNC2 (struct rtmp_stream*,struct encoder_packet*) ; 
 scalar_t__ FUNC3 (struct rtmp_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct encoder_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct encoder_packet*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC6 (struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC7 (struct encoder_packet*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void *data, struct encoder_packet *packet)
{
	struct rtmp_stream *stream = data;
	struct encoder_packet new_packet;
	bool added_packet = false;

	if (FUNC3(stream) || !FUNC0(stream))
		return;

	/* encoder fail */
	if (!packet) {
		FUNC8(&stream->encode_error, true);
		FUNC9(stream->send_sem);
		return;
	}

	if (packet->type == OBS_ENCODER_VIDEO) {
		if (!stream->got_first_video) {
			stream->start_dts_offset =
				FUNC4(packet, packet->dts);
			stream->got_first_video = true;
		}

		FUNC7(&new_packet, packet);
	} else {
		FUNC5(&new_packet, packet);
	}

	FUNC10(&stream->packets_mutex);

	if (!FUNC3(stream)) {
		added_packet = (packet->type == OBS_ENCODER_VIDEO)
				       ? FUNC2(stream, &new_packet)
				       : FUNC1(stream, &new_packet);
	}

	FUNC11(&stream->packets_mutex);

	if (added_packet)
		FUNC9(stream->send_sem);
	else
		FUNC6(&new_packet);
}