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
struct zlog_stream {scalar_t__ use_buffer; scalar_t__ full; scalar_t__ len; scalar_t__ finished; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zlog_stream*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct zlog_stream*,char const*,size_t) ; 

ssize_t FUNC2(struct zlog_stream *stream, const char *str, size_t str_len) /* {{{ */
{
	/* reset stream if it is finished */
	if (stream->finished) {
		stream->finished = 0;
		stream->len = 0;
		stream->full = 0;
	} else if (stream->full) {
		/* do not write anything if the stream is full */
		return 0;
	}

	if (stream->use_buffer) {
		return FUNC0(stream, str, str_len);
	}

	return FUNC1(stream, str, str_len);
}