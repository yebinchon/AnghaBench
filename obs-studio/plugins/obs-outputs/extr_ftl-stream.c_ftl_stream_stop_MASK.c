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
typedef  scalar_t__ uint64_t ;
struct ftl_stream {int /*<<< orphan*/  output; int /*<<< orphan*/  send_sem; scalar_t__ stop_ts; int /*<<< orphan*/  stop_event; scalar_t__ max_shutdown_time_sec; scalar_t__ shutdown_timeout_ts; int /*<<< orphan*/  connect_thread; int /*<<< orphan*/  status_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_OUTPUT_SUCCESS ; 
 scalar_t__ FUNC0 (struct ftl_stream*) ; 
 scalar_t__ FUNC1 (struct ftl_stream*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct ftl_stream*) ; 

__attribute__((used)) static void FUNC8(void *data, uint64_t ts)
{
	struct ftl_stream *stream = data;
	FUNC2("ftl_stream_stop");

	if (FUNC7(stream) && ts != 0) {
		return;
	}

	if (FUNC1(stream)) {
		FUNC6(stream->status_thread, NULL);
		FUNC6(stream->connect_thread, NULL);
	}

	stream->stop_ts = ts / 1000ULL;

	if (ts) {
		stream->shutdown_timeout_ts =
			ts +
			(uint64_t)stream->max_shutdown_time_sec * 1000000000ULL;
	}

	if (FUNC0(stream)) {
		FUNC4(stream->stop_event);
		if (stream->stop_ts == 0)
			FUNC5(stream->send_sem);
	} else {
		FUNC3(stream->output, OBS_OUTPUT_SUCCESS);
	}
}