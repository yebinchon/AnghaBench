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
struct rtmp_stream {scalar_t__ write_buf_len; scalar_t__ write_buf_size; scalar_t__ write_buf; int /*<<< orphan*/  buffer_has_data_event; int /*<<< orphan*/  write_buf_mutex; int /*<<< orphan*/  buffer_space_available_event; int /*<<< orphan*/  rtmp; } ;
typedef  int /*<<< orphan*/  RTMPSockBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(RTMPSockBuf *sb, const char *data, int len,
			     void *arg)
{
	FUNC1(sb);

	struct rtmp_stream *stream = arg;

retry_send:

	if (!FUNC0(&stream->rtmp))
		return 0;

	FUNC5(&stream->write_buf_mutex);

	if (stream->write_buf_len + len > stream->write_buf_size) {

		FUNC6(&stream->write_buf_mutex);

		if (FUNC4(stream->buffer_space_available_event)) {
			return 0;
		}

		goto retry_send;
	}

	FUNC2(stream->write_buf + stream->write_buf_len, data, len);
	stream->write_buf_len += len;

	FUNC6(&stream->write_buf_mutex);

	FUNC3(stream->buffer_has_data_event);

	return len;
}