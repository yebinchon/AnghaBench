#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tupdesc; int /*<<< orphan*/ * vals; } ;
struct TYPE_5__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  int /*<<< orphan*/  Portal ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  PL_sv_undef ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ SPI_processed ; 
 TYPE_2__* SPI_tuptable ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

SV *
FUNC17(char *cursor)
{
	SV		   *row;

	/*
	 * Execute the FETCH inside a sub-transaction, so we can cope with errors
	 * sanely
	 */
	MemoryContext oldcontext = CurrentMemoryContext;
	ResourceOwner oldowner = CurrentResourceOwner;

	FUNC14();

	FUNC0(NULL);
	/* Want to run inside function's memory context */
	FUNC3(oldcontext);

	FUNC6();
	{
		dTHX;
		Portal		p = FUNC11(cursor);

		if (!p)
		{
			row = &PL_sv_undef;
		}
		else
		{
			FUNC10(p, true, 1);
			if (SPI_processed == 0)
			{
				FUNC13(p);
				FUNC9(p);
				row = &PL_sv_undef;
			}
			else
			{
				row = FUNC16(SPI_tuptable->vals[0],
											 SPI_tuptable->tupdesc,
											 true);
			}
			FUNC12(SPI_tuptable);
		}

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
		FUNC15(edata->message);

		/* Can't get here, but keep compiler quiet */
		return NULL;
	}
	FUNC5();

	return row;
}