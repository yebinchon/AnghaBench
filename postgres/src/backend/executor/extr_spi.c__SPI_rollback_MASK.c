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
struct TYPE_2__ {int internal_xact; scalar_t__ atomic; } ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TRANSACTION_TERMINATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* _SPI_current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(bool chain)
{
	MemoryContext oldcontext = CurrentMemoryContext;

	if (_SPI_current->atomic)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_INVALID_TRANSACTION_TERMINATION),
				 FUNC9("invalid transaction termination")));

	/* see under SPI_commit() */
	if (FUNC2())
		FUNC7(ERROR,
				(FUNC8(ERRCODE_INVALID_TRANSACTION_TERMINATION),
				 FUNC9("cannot roll back while a subtransaction is active")));

	/*
	 * Hold any pinned portals that any PLs might be using.  We have to do
	 * this before changing transaction state, since this will run
	 * user-defined code that might throw an error, and in any case couldn't
	 * be run in an already-aborted transaction.
	 */
	FUNC1();

	/* Start the actual rollback */
	_SPI_current->internal_xact = true;

	if (chain)
		FUNC5();

	FUNC0();

	if (chain)
	{
		FUNC6();
		FUNC4();
	}

	FUNC3(oldcontext);

	_SPI_current->internal_xact = false;
}