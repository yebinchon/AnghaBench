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

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERRCODE_READ_ONLY_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ max_replication_slots ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(bool check_slots, bool recoveryOK)
{
	if (!FUNC4())
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC3("only superusers can query or manipulate replication origins")));

	if (check_slots && max_replication_slots == 0)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC3("cannot query or manipulate replication origin when max_replication_slots = 0")));

	if (!recoveryOK && FUNC0())
		FUNC1(ERROR,
				(FUNC2(ERRCODE_READ_ONLY_SQL_TRANSACTION),
				 FUNC3("cannot manipulate replication origins during recovery")));

}