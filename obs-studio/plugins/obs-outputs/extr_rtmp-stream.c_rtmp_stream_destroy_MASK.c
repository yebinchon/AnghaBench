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
struct rtmp_stream {struct rtmp_stream* write_buf; int /*<<< orphan*/  write_buf_mutex; int /*<<< orphan*/  send_thread_signaled_exit; int /*<<< orphan*/  socket_available_event; int /*<<< orphan*/  buffer_has_data_event; int /*<<< orphan*/  buffer_space_available_event; int /*<<< orphan*/  dbr_mutex; int /*<<< orphan*/  dbr_frames; int /*<<< orphan*/  droptest_info; int /*<<< orphan*/  packets; int /*<<< orphan*/  packets_mutex; int /*<<< orphan*/  send_sem; int /*<<< orphan*/  stop_event; int /*<<< orphan*/  bind_ip; int /*<<< orphan*/  encoder_name; int /*<<< orphan*/  password; int /*<<< orphan*/  username; int /*<<< orphan*/  key; int /*<<< orphan*/  path; int /*<<< orphan*/  send_thread; int /*<<< orphan*/  output; scalar_t__ stop_ts; int /*<<< orphan*/  connect_thread; scalar_t__ connecting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct rtmp_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtmp_stream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct rtmp_stream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rtmp_stream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct rtmp_stream*) ; 

__attribute__((used)) static void FUNC15(void *data)
{
	struct rtmp_stream *stream = data;

	if (FUNC14(stream) && !FUNC4(stream)) {
		FUNC12(stream->send_thread, NULL);

	} else if (FUNC4(stream) || FUNC1(stream)) {
		if (stream->connecting)
			FUNC12(stream->connect_thread, NULL);

		stream->stop_ts = 0;
		FUNC9(stream->stop_event);

		if (FUNC1(stream)) {
			FUNC11(stream->send_sem);
			FUNC7(stream->output);
			FUNC12(stream->send_thread, NULL);
		}
	}

	FUNC0();
	FUNC6(stream);
	FUNC5(&stream->path);
	FUNC5(&stream->key);
	FUNC5(&stream->username);
	FUNC5(&stream->password);
	FUNC5(&stream->encoder_name);
	FUNC5(&stream->bind_ip);
	FUNC8(stream->stop_event);
	FUNC10(stream->send_sem);
	FUNC13(&stream->packets_mutex);
	FUNC3(&stream->packets);
#ifdef TEST_FRAMEDROPS
	circlebuf_free(&stream->droptest_info);
#endif
	FUNC3(&stream->dbr_frames);
	FUNC13(&stream->dbr_mutex);

	FUNC8(stream->buffer_space_available_event);
	FUNC8(stream->buffer_has_data_event);
	FUNC8(stream->socket_available_event);
	FUNC8(stream->send_thread_signaled_exit);
	FUNC13(&stream->write_buf_mutex);

	if (stream->write_buf)
		FUNC2(stream->write_buf);
	FUNC2(stream);
}