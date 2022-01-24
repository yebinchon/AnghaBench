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
typedef  scalar_t__ zlog_bool ;
struct zlog_stream {size_t msg_suffix_len; scalar_t__ len; size_t msg_final_suffix_len; int /*<<< orphan*/ * msg_final_suffix; scalar_t__ msg_quote; int /*<<< orphan*/  line; int /*<<< orphan*/  function; int /*<<< orphan*/ * msg_suffix; } ;

/* Variables and functions */
 scalar_t__ zlog_limit ; 
 int /*<<< orphan*/  FUNC0 (struct zlog_stream*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct zlog_stream*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct zlog_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct zlog_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct zlog_stream *stream) /* {{{ */
{
	if (stream->msg_quote) {
		FUNC0(stream, '"');
	}
	if (stream->msg_suffix != NULL) {
		FUNC1(stream, stream->msg_suffix, stream->msg_suffix_len);
	}
	if (stream->msg_final_suffix != NULL) {
		if (stream->len + stream->msg_final_suffix_len >= zlog_limit) {
			zlog_bool quoting = stream->msg_quote;
			size_t final_suffix_wrap = stream->len + stream->msg_final_suffix_len + 1 - zlog_limit;
			FUNC1(
					stream, stream->msg_final_suffix,
					stream->msg_final_suffix_len - final_suffix_wrap);
			FUNC0(stream, '\n');
			FUNC2(stream);
			stream->msg_quote = 0;
			FUNC3(stream, stream->function, stream->line);
			stream->msg_quote = quoting;
			FUNC1(
					stream,
					stream->msg_final_suffix + (stream->msg_final_suffix_len - final_suffix_wrap),
					final_suffix_wrap);
			FUNC0(stream, '\n');
		} else {
			FUNC1(
					stream, stream->msg_final_suffix, stream->msg_final_suffix_len);
		}
	}
}