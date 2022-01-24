#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_5__ {int /*<<< orphan*/  st_xact_start_timestamp; } ;
typedef  TYPE_1__ PgBackendStatus ;

/* Variables and functions */
 TYPE_1__* MyBEEntry ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  pgstat_track_activities ; 

void
FUNC2(TimestampTz tstamp)
{
	volatile PgBackendStatus *beentry = MyBEEntry;

	if (!pgstat_track_activities || !beentry)
		return;

	/*
	 * Update my status entry, following the protocol of bumping
	 * st_changecount before and after.  We use a volatile pointer here to
	 * ensure the compiler doesn't try to get cute.
	 */
	FUNC0(beentry);

	beentry->st_xact_start_timestamp = tstamp;

	FUNC1(beentry);
}