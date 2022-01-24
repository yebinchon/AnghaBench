#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* prodesc; } ;
struct TYPE_6__ {int /*<<< orphan*/  message; } ;
struct TYPE_5__ {int /*<<< orphan*/  fn_readonly; } ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HV ;
typedef  TYPE_2__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SPI_processed ; 
 int /*<<< orphan*/  SPI_tuptable ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_3__* current_call_data ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

HV *
FUNC15(char *query, int limit)
{
	HV		   *ret_hv;

	/*
	 * Execute the query inside a sub-transaction, so we can cope with errors
	 * sanely
	 */
	MemoryContext oldcontext = CurrentMemoryContext;
	ResourceOwner oldowner = CurrentResourceOwner;

	FUNC10();

	FUNC0(NULL);
	/* Want to run inside function's memory context */
	FUNC3(oldcontext);

	FUNC6();
	{
		int			spi_rv;

		FUNC12(query, FUNC14(query), false);

		spi_rv = FUNC9(query, current_call_data->prodesc->fn_readonly,
							 limit);
		ret_hv = FUNC13(SPI_tuptable, SPI_processed,
												 spi_rv);

		/* Commit the inner transaction, return to outer xact context */
		FUNC7();
		FUNC3(oldcontext);
		CurrentResourceOwner = oldowner;
	}
	FUNC4();
	{
		ErrorData  *edata;

		/* Save error info */
		FUNC3(oldcontext);
		edata = FUNC1();
		FUNC2();

		/* Abort the inner transaction */
		FUNC8();
		FUNC3(oldcontext);
		CurrentResourceOwner = oldowner;

		/* Punt the error to Perl */
		FUNC11(edata->message);

		/* Can't get here, but keep compiler quiet */
		return NULL;
	}
	FUNC5();

	return ret_hv;
}