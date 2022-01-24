#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* query_data; } ;
typedef  TYPE_2__ plperl_query_entry ;
struct TYPE_11__ {int nargs; int /*<<< orphan*/  plan; int /*<<< orphan*/ * argtypioparams; int /*<<< orphan*/ * arginfuncs; int /*<<< orphan*/ * argtypes; } ;
typedef  TYPE_3__ plperl_query_desc ;
struct TYPE_14__ {TYPE_1__* prodesc; } ;
struct TYPE_13__ {int /*<<< orphan*/  query_hash; } ;
struct TYPE_12__ {int /*<<< orphan*/  message; } ;
struct TYPE_9__ {int /*<<< orphan*/  fn_readonly; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HV ;
typedef  TYPE_4__ ErrorData ;
typedef  char Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SPI_processed ; 
 int /*<<< orphan*/  SPI_tuptable ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_7__* current_call_data ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC16 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 TYPE_5__* plperl_active_interp ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

HV *
FUNC21(char *query, HV *attr, int argc, SV **argv)
{
	HV		   *ret_hv;
	SV		  **sv;
	int			i,
				limit,
				spi_rv;
	char	   *nulls;
	Datum	   *argvalues;
	plperl_query_desc *qdesc;
	plperl_query_entry *hash_entry;

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
		dTHX;

		/************************************************************
		 * Fetch the saved plan descriptor, see if it's o.k.
		 ************************************************************/
		hash_entry = FUNC15(plperl_active_interp->query_hash, query,
								 HASH_FIND, NULL);
		if (hash_entry == NULL)
			FUNC14(ERROR, "spi_exec_prepared: Invalid prepared query passed");

		qdesc = hash_entry->query_data;
		if (qdesc == NULL)
			FUNC14(ERROR, "spi_exec_prepared: plperl query_hash value vanished");

		if (qdesc->nargs != argc)
			FUNC14(ERROR, "spi_exec_prepared: expected %d argument(s), %d passed",
				 qdesc->nargs, argc);

		/************************************************************
		 * Parse eventual attributes
		 ************************************************************/
		limit = 0;
		if (attr != NULL)
		{
			sv = FUNC16(attr, "limit");
			if (sv && *sv && FUNC10(*sv))
				limit = FUNC11(*sv);
		}
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

			argvalues[i] = FUNC20(argv[i],
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
		spi_rv = FUNC9(qdesc->plan, argvalues, nulls,
								  current_call_data->prodesc->fn_readonly, limit);
		ret_hv = FUNC19(SPI_tuptable, SPI_processed,
												 spi_rv);
		if (argc > 0)
		{
			FUNC18(argvalues);
			FUNC18(nulls);
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
		FUNC13(edata->message);

		/* Can't get here, but keep compiler quiet */
		return NULL;
	}
	FUNC5();

	return ret_hv;
}