#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  message; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/ * SPIPlanPtr ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  TYPE_1__* Portal ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPI_result ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

SV *
FUNC20(char *query)
{
	SV		   *cursor;

	/*
	 * Execute the query inside a sub-transaction, so we can cope with errors
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
		SPIPlanPtr	plan;
		Portal		portal;

		/* Make sure the query is validly encoded */
		FUNC18(query, FUNC19(query), false);

		/* Create a cursor for the query */
		plan = FUNC12(query, 0, NULL);
		if (plan == NULL)
			FUNC17(ERROR, "SPI_prepare() failed:%s",
				 FUNC13(SPI_result));

		portal = FUNC10(NULL, plan, NULL, NULL, false);
		FUNC11(plan);
		if (portal == NULL)
			FUNC17(ERROR, "SPI_cursor_open() failed:%s",
				 FUNC13(SPI_result));
		cursor = FUNC16(portal->name);

		FUNC7(portal);

		/* Commit the inner transaction, return to outer xact context */
		FUNC8();
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
		FUNC9();
		FUNC3(oldcontext);
		CurrentResourceOwner = oldowner;

		/* Punt the error to Perl */
		FUNC15(edata->message);

		/* Can't get here, but keep compiler quiet */
		return NULL;
	}
	FUNC5();

	return cursor;
}