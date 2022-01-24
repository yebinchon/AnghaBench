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
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct zlog_stream {int /*<<< orphan*/ * msg_final_suffix; int /*<<< orphan*/ * msg_suffix; int /*<<< orphan*/ * msg_prefix; TYPE_1__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct zlog_stream *stream) /* {{{ */
{
	if (stream->buf.data != NULL) {
		FUNC0(stream->buf.data);
	}
	if (stream->msg_prefix != NULL) {
		FUNC0(stream->msg_prefix);
	}
	if (stream->msg_suffix != NULL) {
		FUNC0(stream->msg_suffix);
	} else if (stream->msg_final_suffix != NULL) {
		FUNC0(stream->msg_final_suffix);
	}
}