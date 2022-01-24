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
typedef  void* TimestampTz ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* stmtStartTimestamp ; 
 void* xactStartTimestamp ; 

void
FUNC2(TimestampTz xact_ts, TimestampTz stmt_ts)
{
	FUNC0(FUNC1());
	xactStartTimestamp = xact_ts;
	stmtStartTimestamp = stmt_ts;
}