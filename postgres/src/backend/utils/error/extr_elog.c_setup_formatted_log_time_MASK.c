#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pg_time_t ;
struct TYPE_3__ {int tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORMATTED_TS_LEN ; 
 scalar_t__ formatted_log_time ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  log_timezone ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ saved_timeval ; 
 int saved_timeval_set ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC5(void)
{
	pg_time_t	stamp_time;
	char		msbuf[13];

	if (!saved_timeval_set)
	{
		FUNC0(&saved_timeval, NULL);
		saved_timeval_set = true;
	}

	stamp_time = (pg_time_t) saved_timeval.tv_sec;

	/*
	 * Note: we expect that guc.c will ensure that log_timezone is set up (at
	 * least with a minimal GMT value) before Log_line_prefix can become
	 * nonempty or CSV mode can be selected.
	 */
	FUNC3(formatted_log_time, FORMATTED_TS_LEN,
	/* leave room for milliseconds... */
				"%Y-%m-%d %H:%M:%S     %Z",
				FUNC2(&stamp_time, log_timezone));

	/* 'paste' milliseconds into place... */
	FUNC4(msbuf, ".%03d", (int) (saved_timeval.tv_usec / 1000));
	FUNC1(formatted_log_time + 19, msbuf, 4);
}