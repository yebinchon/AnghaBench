#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_6__ {int /*<<< orphan*/ * tuptable; scalar_t__ processed; } ;
struct TYPE_5__ {scalar_t__ mydest; } ;
typedef  int /*<<< orphan*/  Portal ;
typedef  int /*<<< orphan*/  FetchDirection ;
typedef  TYPE_1__ DestReceiver ;

/* Variables and functions */
 scalar_t__ DestSPI ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,TYPE_1__*) ; 
 scalar_t__ SPI_processed ; 
 int /*<<< orphan*/ * SPI_tuptable ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 TYPE_3__* _SPI_current ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(Portal portal, FetchDirection direction, long count,
					  DestReceiver *dest)
{
	uint64		nfetched;

	/* Check that the portal is valid */
	if (!FUNC0(portal))
		FUNC5(ERROR, "invalid portal in SPI cursor operation");

	/* Push the SPI stack */
	if (FUNC2(true) < 0)
		FUNC5(ERROR, "SPI cursor operation called while not connected");

	/* Reset the SPI result (note we deliberately don't touch lastoid) */
	SPI_processed = 0;
	SPI_tuptable = NULL;
	_SPI_current->processed = 0;
	_SPI_current->tuptable = NULL;

	/* Run the cursor */
	nfetched = FUNC1(portal,
							  direction,
							  count,
							  dest);

	/*
	 * Think not to combine this store with the preceding function call. If
	 * the portal contains calls to functions that use SPI, then _SPI_stack is
	 * likely to move around while the portal runs.  When control returns,
	 * _SPI_current will point to the correct stack entry... but the pointer
	 * may be different than it was beforehand. So we must be sure to re-fetch
	 * the pointer after the function call completes.
	 */
	_SPI_current->processed = nfetched;

	if (dest->mydest == DestSPI && FUNC3())
		FUNC5(ERROR, "consistency check on SPI tuple count failed");

	/* Put the result into place for access by caller */
	SPI_processed = _SPI_current->processed;
	SPI_tuptable = _SPI_current->tuptable;

	/* tuptable now is caller's responsibility, not SPI's */
	_SPI_current->tuptable = NULL;

	/* Pop the SPI stack */
	FUNC4(true);
}