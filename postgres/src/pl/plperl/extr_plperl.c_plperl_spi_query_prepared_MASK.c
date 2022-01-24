#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* query_data; } ;
typedef  TYPE_2__ plperl_query_entry ;
struct TYPE_14__ {int nargs; int /*<<< orphan*/  plan; int /*<<< orphan*/ * argtypioparams; int /*<<< orphan*/ * arginfuncs; int /*<<< orphan*/ * argtypes; } ;
typedef  TYPE_3__ plperl_query_desc ;
struct TYPE_18__ {TYPE_1__* prodesc; } ;
struct TYPE_17__ {int /*<<< orphan*/  query_hash; } ;
struct TYPE_16__ {int /*<<< orphan*/  message; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
struct TYPE_12__ {int /*<<< orphan*/  fn_readonly; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  TYPE_4__* Portal ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_5__ ErrorData ;
typedef  char Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_result ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_8__* current_call_data ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 TYPE_6__* plperl_active_interp ; 
 char FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

SV *
FUNC20(char *query, int argc, SV **argv)
{
	int			i;
	char	   *nulls;
	Datum	   *argvalues;
	plperl_query_desc *qdesc;
	plperl_query_entry *hash_entry;
	SV		   *cursor;
	Portal		portal = NULL;

	/*
	 * Execute the query inside a sub-transaction, so we can cope with errors
	 * sanely
	 */
	MemoryContext oldcontext = CurrentMemoryContext;
	ResourceOwner oldowner = CurrentResourceOwner;

	FUNC12();

	FUNC0(NULL);
	/* Want to run inside function's memory context */
	FUNC3(oldcontext);

	FUNC6();
	{
		/************************************************************
		 * Fetch the saved plan descriptor, see if it's o.k.
		 ************************************************************/
		hash_entry = FUNC16(plperl_active_interp->query_hash, query,
								 HASH_FIND, NULL);
		if (hash_entry == NULL)
			FUNC15(ERROR, "spi_query_prepared: Invalid prepared query passed");

		qdesc = hash_entry->query_data;
		if (qdesc == NULL)
			FUNC15(ERROR, "spi_query_prepared: plperl query_hash value vanished");

		if (qdesc->nargs != argc)
			FUNC15(ERROR, "spi_query_prepared: expected %d argument(s), %d passed",
				 qdesc->nargs, argc);

		/************************************************************
		 * Set up arguments
		 ************************************************************/
		if (argc > 0)
		{
			nulls = (char *) FUNC17(argc);
			argvalues = (Datum *) FUNC17(argc * sizeof(Datum));
		}
		else
		{
			nulls = NULL;
			argvalues = NULL;
		}

		for (i = 0; i < argc; i++)
		{
			bool		isnull;

			argvalues[i] = FUNC19(argv[i],
											  qdesc->argtypes[i],
											  -1,
											  NULL,
											  &qdesc->arginfuncs[i],
											  qdesc->argtypioparams[i],
											  &isnull);
			nulls[i] = isnull ? 'n' : ' ';
		}

		/************************************************************
		 * go
		 ************************************************************/
		portal = FUNC10(NULL, qdesc->plan, argvalues, nulls,
								 current_call_data->prodesc->fn_readonly);
		if (argc > 0)
		{
			FUNC18(argvalues);
			FUNC18(nulls);
		}
		if (portal == NULL)
			FUNC15(ERROR, "SPI_cursor_open() failed:%s",
				 FUNC11(SPI_result));

		cursor = FUNC14(portal->name);

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
		FUNC13(edata->message);

		/* Can't get here, but keep compiler quiet */
		return NULL;
	}
	FUNC5();

	return cursor;
}