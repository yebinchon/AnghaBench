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
struct TYPE_2__ {char* member_names; int nmembers; scalar_t__ syncrep_method; } ;

/* Variables and functions */
 scalar_t__ SYNC_REP_PRIORITY ; 
 TYPE_1__* SyncRepConfig ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ am_cascading_walsender ; 
 int /*<<< orphan*/  application_name ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	const char *standby_name;
	int			priority;
	bool		found = false;

	/*
	 * Since synchronous cascade replication is not allowed, we always set the
	 * priority of cascading walsender to zero.
	 */
	if (am_cascading_walsender)
		return 0;

	if (!FUNC0() || SyncRepConfig == NULL)
		return 0;

	standby_name = SyncRepConfig->member_names;
	for (priority = 1; priority <= SyncRepConfig->nmembers; priority++)
	{
		if (FUNC1(standby_name, application_name) == 0 ||
			FUNC2(standby_name, "*") == 0)
		{
			found = true;
			break;
		}
		standby_name += FUNC3(standby_name) + 1;
	}

	if (!found)
		return 0;

	/*
	 * In quorum-based sync replication, all the standbys in the list have the
	 * same priority, one.
	 */
	return (SyncRepConfig->syncrep_method == SYNC_REP_PRIORITY) ? priority : 1;
}