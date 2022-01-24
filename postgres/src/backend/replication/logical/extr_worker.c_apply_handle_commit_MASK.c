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
struct TYPE_3__ {scalar_t__ commit_lsn; int /*<<< orphan*/  end_lsn; int /*<<< orphan*/  committime; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ LogicalRepCommitData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  STATE_IDLE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int in_remote_transaction ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ remote_final_lsn ; 
 int /*<<< orphan*/  replorigin_session_origin_lsn ; 
 int /*<<< orphan*/  replorigin_session_origin_timestamp ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(StringInfo s)
{
	LogicalRepCommitData commit_data;

	FUNC5(s, &commit_data);

	FUNC1(commit_data.commit_lsn == remote_final_lsn);

	/* The synchronization worker runs in single transaction. */
	if (FUNC3() && !FUNC4())
	{
		/*
		 * Update origin state so we can restart streaming from correct
		 * position in case of crash.
		 */
		replorigin_session_origin_lsn = commit_data.end_lsn;
		replorigin_session_origin_timestamp = commit_data.committime;

		FUNC2();
		FUNC8(false);

		FUNC10(commit_data.end_lsn);
	}
	else
	{
		/* Process any invalidation messages that might have accumulated. */
		FUNC0();
		FUNC6();
	}

	in_remote_transaction = false;

	/* Process any tables that are being synchronized in parallel. */
	FUNC9(commit_data.end_lsn);

	FUNC7(STATE_IDLE, NULL);
}