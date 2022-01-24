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
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * AuxProcessResourceOwner ; 
 int CHECKPOINT_IMMEDIATE ; 
 int CHECKPOINT_IS_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * CurrentResourceOwner ; 
 scalar_t__ IsPostmasterEnvironment ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  NOTICE ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

void
FUNC15(int code, Datum arg)
{
	/*
	 * We should have an aux process resource owner to use, and we should not
	 * be in a transaction that's installed some other resowner.
	 */
	FUNC0(AuxProcessResourceOwner != NULL);
	FUNC0(CurrentResourceOwner == NULL ||
		   CurrentResourceOwner == AuxProcessResourceOwner);
	CurrentResourceOwner = AuxProcessResourceOwner;

	/* Don't be chatty in standalone mode */
	FUNC13(IsPostmasterEnvironment ? LOG : NOTICE,
			(FUNC14("shutting down")));

	/*
	 * Signal walsenders to move to stopping state.
	 */
	FUNC9();

	/*
	 * Wait for WAL senders to be in stopping state.  This prevents commands
	 * from writing new WAL.
	 */
	FUNC10();

	if (FUNC3())
		FUNC2(CHECKPOINT_IS_SHUTDOWN | CHECKPOINT_IMMEDIATE);
	else
	{
		/*
		 * If archiving is enabled, rotate the last XLOG file so that all the
		 * remaining records are archived (postmaster wakes up the archiver
		 * process one more time at the end of shutdown). The checkpoint
		 * record will go to the next XLOG file and won't be archived (yet).
		 */
		if (FUNC12() && FUNC11())
			FUNC4(false);

		FUNC1(CHECKPOINT_IS_SHUTDOWN | CHECKPOINT_IMMEDIATE);
	}
	FUNC5();
	FUNC6();
	FUNC8();
	FUNC7();
}