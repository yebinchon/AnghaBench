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
struct TYPE_4__ {int m_bCustomSend; } ;
struct TYPE_3__ {int /*<<< orphan*/  array; } ;
struct rtmp_stream {scalar_t__ stop_ts; int sent_headers; int socket_thread_active; scalar_t__ dbr_cur_bitrate; scalar_t__ dbr_orig_bitrate; scalar_t__ dbr_enabled; int /*<<< orphan*/  active; int /*<<< orphan*/  stop_event; int /*<<< orphan*/  output; int /*<<< orphan*/  send_thread; TYPE_2__ rtmp; int /*<<< orphan*/  socket_thread; int /*<<< orphan*/  buffer_has_data_event; int /*<<< orphan*/  send_thread_signaled_exit; scalar_t__ new_socket_loop; TYPE_1__ path; int /*<<< orphan*/  encode_error; int /*<<< orphan*/  dbr_mutex; int /*<<< orphan*/  disconnected; int /*<<< orphan*/  send_sem; } ;
struct encoder_packet {int /*<<< orphan*/  track_idx; int /*<<< orphan*/  size; } ;
struct dbr_frame {void* send_end; int /*<<< orphan*/  size; void* send_beg; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_OUTPUT_DISCONNECTED ; 
 int /*<<< orphan*/  OBS_OUTPUT_ENCODE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct rtmp_stream*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtmp_stream*,struct dbr_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtmp_stream*) ; 
 scalar_t__ FUNC4 (struct rtmp_stream*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtmp_stream*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtmp_stream*,struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct encoder_packet*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct rtmp_stream*) ; 
 scalar_t__ FUNC23 (struct rtmp_stream*,struct encoder_packet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct rtmp_stream*) ; 
 scalar_t__ FUNC25 (struct rtmp_stream*) ; 

__attribute__((used)) static void *FUNC26(void *data)
{
	struct rtmp_stream *stream = data;

	FUNC17("rtmp-stream: send_thread");

	while (FUNC16(stream->send_sem) == 0) {
		struct encoder_packet packet;
		struct dbr_frame dbr_frame;

		if (FUNC25(stream) && stream->stop_ts == 0) {
			break;
		}

		if (!FUNC6(stream, &packet))
			continue;

		if (FUNC25(stream)) {
			if (FUNC1(stream, &packet)) {
				FUNC8(&packet);
				break;
			}
		}

		if (!stream->sent_headers) {
			if (!FUNC22(stream)) {
				FUNC12(&stream->disconnected, true);
				break;
			}
		}

		if (stream->dbr_enabled) {
			dbr_frame.send_beg = FUNC15();
			dbr_frame.size = packet.size;
		}

		if (FUNC23(stream, &packet, false, packet.track_idx) < 0) {
			FUNC12(&stream->disconnected, true);
			break;
		}

		if (stream->dbr_enabled) {
			dbr_frame.send_end = FUNC15();

			FUNC20(&stream->dbr_mutex);
			FUNC2(stream, &dbr_frame);
			FUNC21(&stream->dbr_mutex);
		}
	}

	bool encode_error = FUNC11(&stream->encode_error);

	if (FUNC4(stream)) {
		FUNC7("Disconnected from %s", stream->path.array);
	} else if (encode_error) {
		FUNC7("Encoder error, disconnecting");
	} else {
		FUNC7("User stopped the stream");
	}

	if (stream->new_socket_loop) {
		FUNC14(stream->send_thread_signaled_exit);
		FUNC14(stream->buffer_has_data_event);
		FUNC19(stream->socket_thread, NULL);
		stream->socket_thread_active = false;
		stream->rtmp.m_bCustomSend = false;
	}

	FUNC24(stream);
	FUNC0(&stream->rtmp);

	if (!FUNC25(stream)) {
		FUNC18(stream->send_thread);
		FUNC10(stream->output, OBS_OUTPUT_DISCONNECTED);
	} else if (encode_error) {
		FUNC10(stream->output, OBS_OUTPUT_ENCODE_ERROR);
	} else {
		FUNC9(stream->output);
	}

	FUNC5(stream);
	FUNC13(stream->stop_event);
	FUNC12(&stream->active, false);
	stream->sent_headers = false;

	/* reset bitrate on stop */
	if (stream->dbr_enabled) {
		if (stream->dbr_cur_bitrate != stream->dbr_orig_bitrate) {
			stream->dbr_cur_bitrate = stream->dbr_orig_bitrate;
			FUNC3(stream);
		}
	}

	return NULL;
}