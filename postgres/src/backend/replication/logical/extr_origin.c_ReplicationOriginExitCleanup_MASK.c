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
struct TYPE_2__ {scalar_t__ acquired_by; int /*<<< orphan*/  origin_cv; } ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ConditionVariable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  ReplicationOriginLock ; 
 TYPE_1__* session_replication_state ; 

__attribute__((used)) static void
FUNC3(int code, Datum arg)
{
	ConditionVariable *cv = NULL;

	FUNC1(ReplicationOriginLock, LW_EXCLUSIVE);

	if (session_replication_state != NULL &&
		session_replication_state->acquired_by == MyProcPid)
	{
		cv = &session_replication_state->origin_cv;

		session_replication_state->acquired_by = 0;
		session_replication_state = NULL;
	}

	FUNC2(ReplicationOriginLock);

	if (cv)
		FUNC0(cv);
}