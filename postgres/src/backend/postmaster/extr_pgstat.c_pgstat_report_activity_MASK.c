#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* TimestampTz ;
struct TYPE_8__ {scalar_t__ wait_event_info; } ;
struct TYPE_7__ {scalar_t__ st_state; char* st_activity_raw; void* st_activity_start_timestamp; void* st_state_start_timestamp; scalar_t__ st_xact_start_timestamp; } ;
typedef  TYPE_1__ PgBackendStatus ;
typedef  TYPE_2__ PGPROC ;
typedef  scalar_t__ BackendState ;

/* Variables and functions */
 void* FUNC0 () ; 
 void* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* MyBEEntry ; 
 TYPE_2__* MyProc ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ volatile*) ; 
 scalar_t__ STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  pgstat_track_activities ; 
 scalar_t__ pgstat_track_activity_query_size ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

void
FUNC8(BackendState state, const char *cmd_str)
{
	volatile PgBackendStatus *beentry = MyBEEntry;
	TimestampTz start_timestamp;
	TimestampTz current_timestamp;
	int			len = 0;

	FUNC5(cmd_str);

	if (!beentry)
		return;

	if (!pgstat_track_activities)
	{
		if (beentry->st_state != STATE_DISABLED)
		{
			volatile PGPROC *proc = MyProc;

			/*
			 * track_activities is disabled, but we last reported a
			 * non-disabled state.  As our final update, change the state and
			 * clear fields we will not be updating anymore.
			 */
			FUNC3(beentry);
			beentry->st_state = STATE_DISABLED;
			beentry->st_state_start_timestamp = 0;
			beentry->st_activity_raw[0] = '\0';
			beentry->st_activity_start_timestamp = 0;
			/* st_xact_start_timestamp and wait_event_info are also disabled */
			beentry->st_xact_start_timestamp = 0;
			proc->wait_event_info = 0;
			FUNC4(beentry);
		}
		return;
	}

	/*
	 * To minimize the time spent modifying the entry, and avoid risk of
	 * errors inside the critical section, fetch all the needed data first.
	 */
	start_timestamp = FUNC0();
	if (cmd_str != NULL)
	{
		/*
		 * Compute length of to-be-stored string unaware of multi-byte
		 * characters. For speed reasons that'll get corrected on read, rather
		 * than computed every write.
		 */
		len = FUNC2(FUNC7(cmd_str), pgstat_track_activity_query_size - 1);
	}
	current_timestamp = FUNC1();

	/*
	 * Now update the status entry
	 */
	FUNC3(beentry);

	beentry->st_state = state;
	beentry->st_state_start_timestamp = current_timestamp;

	if (cmd_str != NULL)
	{
		FUNC6((char *) beentry->st_activity_raw, cmd_str, len);
		beentry->st_activity_raw[len] = '\0';
		beentry->st_activity_start_timestamp = start_timestamp;
	}

	FUNC4(beentry);
}