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
struct ftl_stream {int /*<<< orphan*/  packets; int /*<<< orphan*/  packets_mutex; int /*<<< orphan*/  send_sem; int /*<<< orphan*/  stop_event; int /*<<< orphan*/  bind_ip; int /*<<< orphan*/  encoder_name; int /*<<< orphan*/  password; int /*<<< orphan*/  username; int /*<<< orphan*/  path; int /*<<< orphan*/  ftl_handle; int /*<<< orphan*/  send_thread; int /*<<< orphan*/  output; scalar_t__ stop_ts; int /*<<< orphan*/  connect_thread; int /*<<< orphan*/  status_thread; scalar_t__ connecting; } ;
typedef  scalar_t__ ftl_status_t ;

/* Variables and functions */
 scalar_t__ FTL_SUCCESS ; 
 scalar_t__ FUNC0 (struct ftl_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftl_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ftl_stream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ftl_stream*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct ftl_stream*) ; 

__attribute__((used)) static void FUNC16(void *data)
{
	struct ftl_stream *stream = data;
	ftl_status_t status_code;

	FUNC7("ftl_stream_destroy");

	if (FUNC15(stream) && !FUNC3(stream)) {
		FUNC13(stream->send_thread, NULL);

	} else if (FUNC3(stream) || FUNC0(stream)) {
		if (stream->connecting) {
			FUNC7("wait for connect_thread to terminate");
			FUNC13(stream->status_thread, NULL);
			FUNC13(stream->connect_thread, NULL);
			FUNC7("wait for connect_thread to terminate: done");
		}

		stream->stop_ts = 0;
		FUNC10(stream->stop_event);

		if (FUNC0(stream)) {
			FUNC12(stream->send_sem);
			FUNC8(stream->output);
			FUNC13(stream->send_thread, NULL);
		}
	}

	FUNC7("ingest destroy");

	status_code = FUNC6(&stream->ftl_handle);
	if (status_code != FTL_SUCCESS) {
		FUNC7("Failed to destroy from ingest %d", status_code);
	}

	if (stream) {
		FUNC5(stream);
		FUNC4(&stream->path);
		FUNC4(&stream->username);
		FUNC4(&stream->password);
		FUNC4(&stream->encoder_name);
		FUNC4(&stream->bind_ip);
		FUNC9(stream->stop_event);
		FUNC11(stream->send_sem);
		FUNC14(&stream->packets_mutex);
		FUNC2(&stream->packets);
		FUNC1(stream);
	}
}