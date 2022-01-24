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
struct flv_output {int sent_headers; int got_first_video; int /*<<< orphan*/  mutex; int /*<<< orphan*/  start_dts_offset; scalar_t__ stop_ts; } ;
struct encoder_packet {scalar_t__ sys_dts_usec; scalar_t__ type; int /*<<< orphan*/  dts; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  OBS_OUTPUT_ENCODE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct flv_output*) ; 
 int /*<<< orphan*/  FUNC1 (struct flv_output*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct encoder_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct encoder_packet*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct flv_output*) ; 
 int /*<<< orphan*/  FUNC8 (struct flv_output*) ; 
 int /*<<< orphan*/  FUNC9 (struct flv_output*,struct encoder_packet*,int) ; 

__attribute__((used)) static void FUNC10(void *data, struct encoder_packet *packet)
{
	struct flv_output *stream = data;
	struct encoder_packet parsed_packet;

	FUNC5(&stream->mutex);

	if (!FUNC0(stream))
		goto unlock;

	if (!packet) {
		FUNC1(stream, OBS_OUTPUT_ENCODE_ERROR);
		goto unlock;
	}

	if (FUNC7(stream)) {
		if (packet->sys_dts_usec >= (int64_t)stream->stop_ts) {
			FUNC1(stream, 0);
			goto unlock;
		}
	}

	if (!stream->sent_headers) {
		FUNC8(stream);
		stream->sent_headers = true;
	}

	if (packet->type == OBS_ENCODER_VIDEO) {
		if (!stream->got_first_video) {
			stream->start_dts_offset =
				FUNC2(packet, packet->dts);
			stream->got_first_video = true;
		}

		FUNC4(&parsed_packet, packet);
		FUNC9(stream, &parsed_packet, false);
		FUNC3(&parsed_packet);
	} else {
		FUNC9(stream, packet, false);
	}

unlock:
	FUNC6(&stream->mutex);
}