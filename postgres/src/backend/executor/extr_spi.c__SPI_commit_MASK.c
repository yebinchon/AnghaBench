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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TRANSACTION_TERMINATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* _SPI_current ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(bool chain)
{
	MemoryContext oldcontext = CurrentMemoryContext;

	if (_SPI_current->atomic)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INVALID_TRANSACTION_TERMINATION),
				 FUNC11("invalid transaction termination")));

	/*
	 * This restriction is required by PLs implemented on top of SPI.  They
	 * use subtransactions to establish exception blocks that are supposed to
	 * be rolled back together if there is an error.  Terminating the
	 * top-level transaction in such a block violates that idea.  A future PL
	 * implementation might have different ideas about this, in which case
	 * this restriction would have to be refined or the check possibly be
	 * moved out of SPI into the PLs.
	 */
	if (FUNC3())
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INVALID_TRANSACTION_TERMINATION),
				 FUNC11("cannot commit while a subtransaction is active")));

	/*
	 * Hold any pinned portals that any PLs might be using.  We have to do
	 * this before changing transaction state, since this will run
	 * user-defined code that might throw an error.
	 */
	FUNC2();

	/* Start the actual commit */
	_SPI_current->internal_xact = true;

	/*
	 * Before committing, pop all active snapshots to avoid error about
	 * "snapshot %p still active".
	 */
	while (FUNC0())
		FUNC5();

	if (chain)
		FUNC7();

	FUNC1();

	if (chain)
	{
		FUNC8();
		FUNC6();
	}

	FUNC4(oldcontext);

	_SPI_current->internal_xact = false;
}