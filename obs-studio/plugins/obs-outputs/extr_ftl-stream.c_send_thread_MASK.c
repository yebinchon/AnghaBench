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
struct TYPE_2__ {int /*<<< orphan*/  array; } ;
struct ftl_stream {scalar_t__ stop_ts; int sent_headers; int /*<<< orphan*/  active; int /*<<< orphan*/  stop_event; int /*<<< orphan*/  ftl_handle; int /*<<< orphan*/  output; int /*<<< orphan*/  send_thread; TYPE_1__ path; int /*<<< orphan*/  encode_error; int /*<<< orphan*/  disconnected; int /*<<< orphan*/  send_sem; } ;
struct encoder_packet {int /*<<< orphan*/  dts_usec; scalar_t__ keyframe; } ;
typedef  scalar_t__ ftl_status_t ;

/* Variables and functions */
 scalar_t__ FTL_SUCCESS ; 
 int /*<<< orphan*/  OBS_OUTPUT_DISCONNECTED ; 
 int /*<<< orphan*/  OBS_OUTPUT_ENCODE_ERROR ; 
 scalar_t__ FUNC0 (struct ftl_stream*,struct encoder_packet*) ; 
 scalar_t__ FUNC1 (struct ftl_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftl_stream*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ftl_stream*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ftl_stream*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct ftl_stream*,struct encoder_packet*,int) ; 
 scalar_t__ FUNC18 (struct ftl_stream*) ; 

__attribute__((used)) static void *FUNC19(void *data)
{
	struct ftl_stream *stream = data;
	ftl_status_t status_code;

	FUNC13("ftl-stream: send_thread");

	while (FUNC12(stream->send_sem) == 0) {
		struct encoder_packet packet;

		if (FUNC18(stream) && stream->stop_ts == 0) {
			break;
		}

		if (!FUNC4(stream, &packet))
			continue;

		if (FUNC18(stream)) {
			if (FUNC0(stream, &packet)) {
				FUNC6(&packet);
				break;
			}
		}

		/* sends sps/pps on every key frame as this is typically
		 * required for webrtc */
		if (packet.keyframe) {
			if (!FUNC16(stream, packet.dts_usec)) {
				FUNC10(&stream->disconnected, true);
				break;
			}
		}

		if (FUNC17(stream, &packet, false) < 0) {
			FUNC10(&stream->disconnected, true);
			break;
		}
	}

	bool encode_error = FUNC9(&stream->encode_error);

	if (FUNC1(stream)) {
		FUNC5("Disconnected from %s", stream->path.array);
	} else if (encode_error) {
		FUNC5("Encoder error, disconnecting");
	} else {
		FUNC5("User stopped the stream");
	}

	if (!FUNC18(stream)) {
		FUNC15(stream->send_thread);
		FUNC8(stream->output, OBS_OUTPUT_DISCONNECTED);
	} else if (encode_error) {
		FUNC8(stream->output, OBS_OUTPUT_ENCODE_ERROR);
	} else {
		FUNC7(stream->output);
	}

	FUNC5("ingest disconnect");

	status_code = FUNC3(&stream->ftl_handle);
	if (status_code != FTL_SUCCESS) {
		FUNC14("Failed to disconnect from ingest %d", status_code);
	}

	FUNC2(stream);
	FUNC11(stream->stop_event);
	FUNC10(&stream->active, false);
	stream->sent_headers = false;
	return NULL;
}