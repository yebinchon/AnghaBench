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
struct TYPE_2__ {char* data; int size; } ;
struct zlog_stream {char const* function; int line; size_t len; size_t prefix_len; char* msg_prefix; int msg_prefix_len; scalar_t__ msg_quote; int /*<<< orphan*/  use_syslog; int /*<<< orphan*/  flags; TYPE_1__ buf; scalar_t__ use_buffer; scalar_t__ wrap; int /*<<< orphan*/  prefix_buffer; } ;
typedef  int ssize_t ;

/* Variables and functions */
 size_t FUNC0 (char const*,int,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zlog_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct zlog_stream*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct zlog_stream*,char*,int) ; 
 int FUNC4 (struct zlog_stream*,char*,int) ; 

ssize_t FUNC5(struct zlog_stream *stream, const char *function, int line) /* {{{ */
{
	size_t len;

	if (!stream->prefix_buffer) {
		return 0;
	}
	if (stream->wrap && stream->function == NULL) {
		stream->function = function;
		stream->line = line;
	}

	if (stream->use_buffer) {
		if (!FUNC1(stream)) {
			return -1;
		}
		len = FUNC0(
				function, line, stream->flags,
				stream->buf.data, stream->buf.size, stream->use_syslog);
		stream->len = stream->prefix_len = len;
		if (stream->msg_prefix != NULL) {
			FUNC3(stream, stream->msg_prefix, stream->msg_prefix_len);
		}
		if (stream->msg_quote) {
			FUNC2(stream, '"');
		}
		return stream->len;
	} else {
		char sbuf[1024];
		ssize_t written;
		len = FUNC0(function, line, stream->flags, sbuf, 1024, stream->use_syslog);
		written = FUNC4(stream, sbuf, len);
		if (stream->msg_prefix != NULL) {
			written += FUNC4(
					stream, stream->msg_prefix, stream->msg_prefix_len);
		}
		if (stream->msg_quote) {
			written += FUNC4(stream, "\"", 1);
		}
		return written;
	}
}