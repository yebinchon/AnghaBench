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
struct TYPE_5__ {struct TYPE_5__* tmpdir; int /*<<< orphan*/  meta; scalar_t__ innerstream; } ;
typedef  TYPE_1__ php_stream_temp_data ;
struct TYPE_6__ {scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;

/* Variables and functions */
 int PHP_STREAM_FREE_CLOSE ; 
 int PHP_STREAM_FREE_PRESERVE_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(php_stream *stream, int close_handle)
{
	php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;
	int ret;

	FUNC0(ts != NULL);

	if (ts->innerstream) {
		ret = FUNC2(ts->innerstream, PHP_STREAM_FREE_CLOSE | (close_handle ? 0 : PHP_STREAM_FREE_PRESERVE_HANDLE));
	} else {
		ret = 0;
	}

	FUNC3(&ts->meta);

	if (ts->tmpdir) {
		FUNC1(ts->tmpdir);
	}

	FUNC1(ts);

	return ret;
}