#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ mode; struct TYPE_5__* data; } ;
typedef  TYPE_1__ php_stream_memory_data ;
struct TYPE_6__ {scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;

/* Variables and functions */
 scalar_t__ TEMP_STREAM_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(php_stream *stream, int close_handle)
{
	php_stream_memory_data *ms = (php_stream_memory_data*)stream->abstract;
	FUNC0(ms != NULL);

	if (ms->data && close_handle && ms->mode != TEMP_STREAM_READONLY) {
		FUNC1(ms->data);
	}
	FUNC1(ms);
	return 0;
}