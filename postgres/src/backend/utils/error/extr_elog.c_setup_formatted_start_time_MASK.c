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
typedef  int /*<<< orphan*/  pg_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FORMATTED_TS_LEN ; 
 int /*<<< orphan*/  MyStartTime ; 
 int /*<<< orphan*/  formatted_start_time ; 
 int /*<<< orphan*/  log_timezone ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	pg_time_t	stamp_time = (pg_time_t) MyStartTime;

	/*
	 * Note: we expect that guc.c will ensure that log_timezone is set up (at
	 * least with a minimal GMT value) before Log_line_prefix can become
	 * nonempty or CSV mode can be selected.
	 */
	FUNC1(formatted_start_time, FORMATTED_TS_LEN,
				"%Y-%m-%d %H:%M:%S %Z",
				FUNC0(&stamp_time, log_timezone));
}