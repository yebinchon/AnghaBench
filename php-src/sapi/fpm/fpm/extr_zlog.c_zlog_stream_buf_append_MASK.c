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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct zlog_stream {size_t len; size_t msg_suffix_len; size_t msg_quote; char const* msg_suffix; int full; TYPE_1__ buf; int /*<<< orphan*/  line; int /*<<< orphan*/  function; scalar_t__ wrap; } ;
typedef  int ssize_t ;

/* Variables and functions */
 size_t zlog_limit ; 
 int /*<<< orphan*/  FUNC0 (struct zlog_stream*,char) ; 
 scalar_t__ FUNC1 (struct zlog_stream*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct zlog_stream*) ; 
 size_t FUNC3 (struct zlog_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(
		struct zlog_stream *stream, const char *str, size_t str_len)  /* {{{ */
{
	int over_limit = 0;
	size_t available_len, required_len, reserved_len;

	if (stream->len == 0) {
		stream->len = FUNC3(stream, stream->function, stream->line);
	}

	/* msg_suffix_len and msg_quote are used only for wrapping */
	reserved_len = stream->len + stream->msg_suffix_len + stream->msg_quote;
	required_len = reserved_len + str_len;
	if (required_len >= zlog_limit) {
		over_limit = 1;
		available_len = zlog_limit - reserved_len - 1;
	} else {
		available_len = str_len;
	}

	if (FUNC1(stream, str, available_len) < 0) {
		return -1;
	}

	if (!over_limit) {
		return available_len;
	}

	if (stream->wrap) {
		if (stream->msg_quote) {
			FUNC0(stream, '"');
		}
		if (stream->msg_suffix != NULL) {
			FUNC1(stream, stream->msg_suffix, stream->msg_suffix_len);
		}
		FUNC2(stream);
		FUNC3(stream, stream->function, stream->line);
		return available_len + FUNC5(
				stream, str + available_len, str_len - available_len);
	}

	stream->len = FUNC4(stream->buf.data, stream->len, 0);
	stream->full = 1;
	return available_len;
}