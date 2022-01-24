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
 int /*<<< orphan*/  ERRCODE_INVALID_TRANSACTION_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InitializingParallelWorker ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6(const char *newval, void *extra)
{
	int			encoding = *((int *) extra);

	/*
	 * Parallel workers send data to the leader, not the client.  They always
	 * send data using the database encoding.
	 */
	if (FUNC0())
	{
		/*
		 * During parallel worker startup, we want to accept the leader's
		 * client_encoding setting so that anyone who looks at the value in
		 * the worker sees the same value that they would see in the leader.
		 */
		if (InitializingParallelWorker)
			return;

		/*
		 * A change other than during startup, for example due to a SET clause
		 * attached to a function definition, should be rejected, as there is
		 * nothing we can do inside the worker to make it take effect.
		 */
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INVALID_TRANSACTION_STATE),
				 FUNC5("cannot change client_encoding during a parallel operation")));
	}

	/* We do not expect an error if PrepareClientEncoding succeeded */
	if (FUNC1(encoding) < 0)
		FUNC2(LOG, "SetClientEncoding(%d) failed", encoding);
}