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
typedef  int /*<<< orphan*/  RecoveryTargetTimeLineGoal ;
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RECOVERY_TARGET_TIMELINE_CONTROLFILE ; 
 int /*<<< orphan*/  RECOVERY_TARGET_TIMELINE_LATEST ; 
 int /*<<< orphan*/  RECOVERY_TARGET_TIMELINE_NUMERIC ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(char **newval, void **extra, GucSource source)
{
	RecoveryTargetTimeLineGoal rttg;
	RecoveryTargetTimeLineGoal *myextra;

	if (FUNC2(*newval, "current") == 0)
		rttg = RECOVERY_TARGET_TIMELINE_CONTROLFILE;
	else if (FUNC2(*newval, "latest") == 0)
		rttg = RECOVERY_TARGET_TIMELINE_LATEST;
	else
	{
		rttg = RECOVERY_TARGET_TIMELINE_NUMERIC;

		errno = 0;
		FUNC3(*newval, NULL, 0);
		if (errno == EINVAL || errno == ERANGE)
		{
			FUNC0("recovery_target_timeline is not a valid number.");
			return false;
		}
	}

	myextra = (RecoveryTargetTimeLineGoal *) FUNC1(ERROR, sizeof(RecoveryTargetTimeLineGoal));
	*myextra = rttg;
	*extra = (void *) myextra;

	return true;
}