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
typedef  int /*<<< orphan*/  zlog_bool ;
struct zlog_stream {int finished; scalar_t__ len; scalar_t__ decorate; scalar_t__ use_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZLOG_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct zlog_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct zlog_stream*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zlog_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct zlog_stream*) ; 

zlog_bool FUNC4(struct zlog_stream *stream) /* {{{ */
{
	if (stream->finished || stream->len == 0) {
		return ZLOG_TRUE;
	}

	if (stream->use_buffer) {
		if (stream->decorate) {
			FUNC2(stream);
		}
		FUNC0(stream);
	} else {
		if (stream->decorate) {
			FUNC3(stream);
		} else {
			FUNC1(stream, "\n", 1);
		}
	}
	stream->finished = 1;

	return ZLOG_TRUE;
}