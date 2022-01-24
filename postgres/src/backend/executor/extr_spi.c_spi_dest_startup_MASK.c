#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_4__ {int /*<<< orphan*/  tuptables; TYPE_1__* tuptable; } ;
struct TYPE_3__ {int alloced; int /*<<< orphan*/  tupdesc; scalar_t__ numvals; int /*<<< orphan*/ * vals; int /*<<< orphan*/  next; int /*<<< orphan*/  subid; int /*<<< orphan*/  tuptabcxt; } ;
typedef  TYPE_1__ SPITupleTable ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  DestReceiver ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* _SPI_current ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC9(DestReceiver *self, int operation, TupleDesc typeinfo)
{
	SPITupleTable *tuptable;
	MemoryContext oldcxt;
	MemoryContext tuptabcxt;

	if (_SPI_current == NULL)
		FUNC5(ERROR, "spi_dest_startup called while not connected to SPI");

	if (_SPI_current->tuptable != NULL)
		FUNC5(ERROR, "improper call to spi_dest_startup");

	/* We create the tuple table context as a child of procCxt */

	oldcxt = FUNC4();	/* switch to procedure memory context */

	tuptabcxt = FUNC0(CurrentMemoryContext,
									  "SPI TupTable",
									  ALLOCSET_DEFAULT_SIZES);
	FUNC3(tuptabcxt);

	_SPI_current->tuptable = tuptable = (SPITupleTable *)
		FUNC7(sizeof(SPITupleTable));
	tuptable->tuptabcxt = tuptabcxt;
	tuptable->subid = FUNC2();

	/*
	 * The tuptable is now valid enough to be freed by AtEOSubXact_SPI, so put
	 * it onto the SPI context's tuptables list.  This will ensure it's not
	 * leaked even in the unlikely event the following few lines fail.
	 */
	FUNC8(&_SPI_current->tuptables, &tuptable->next);

	/* set up initial allocations */
	tuptable->alloced = 128;
	tuptable->vals = (HeapTuple *) FUNC6(tuptable->alloced * sizeof(HeapTuple));
	tuptable->numvals = 0;
	tuptable->tupdesc = FUNC1(typeinfo);

	FUNC3(oldcxt);
}