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
struct TYPE_2__ {size_t size; size_t data; } ;
struct zlog_stream {size_t len; TYPE_1__ buf; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct zlog_stream*,size_t) ; 

__attribute__((used)) static inline ssize_t FUNC2(
		struct zlog_stream *stream, const char *str, size_t str_len) /* {{{ */
{
	if (stream->buf.size - stream->len <= str_len && !FUNC1(stream, str_len)) {
		return -1;
	}

	FUNC0(stream->buf.data + stream->len, str, str_len);
	stream->len += str_len;

	return str_len;
}