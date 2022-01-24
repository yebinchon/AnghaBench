#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  TupleConversionMap ;
struct TYPE_21__ {scalar_t__ eval_processed; int /*<<< orphan*/ * tuple_store; int /*<<< orphan*/  tuple_store_desc; int /*<<< orphan*/  retisset; } ;
struct TYPE_20__ {int /*<<< orphan*/  params; int /*<<< orphan*/ * dynquery; int /*<<< orphan*/ * query; } ;
struct TYPE_19__ {int /*<<< orphan*/  tupDesc; } ;
struct TYPE_18__ {int /*<<< orphan*/ * vals; } ;
typedef  TYPE_1__* Portal ;
typedef  TYPE_2__ PLpgSQL_stmt_return_query ;
typedef  TYPE_3__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PLPGSQL_RC_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_14__*) ; 
 scalar_t__ SPI_processed ; 
 TYPE_14__* SPI_tuptable ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_1__* FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(PLpgSQL_execstate *estate,
					   PLpgSQL_stmt_return_query *stmt)
{
	Portal		portal;
	uint64		processed = 0;
	TupleConversionMap *tupmap;
	MemoryContext oldcontext;

	if (!estate->retisset)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_SYNTAX_ERROR),
				 FUNC8("cannot use RETURN QUERY in a non-SETOF function")));

	if (estate->tuple_store == NULL)
		FUNC11(estate);

	if (stmt->query != NULL)
	{
		/* static query */
		FUNC12(estate, stmt->query, 0, &portal);
	}
	else
	{
		/* RETURN QUERY EXECUTE */
		FUNC0(stmt->dynquery != NULL);
		portal = FUNC9(estate, stmt->dynquery,
										   stmt->params, NULL,
										   0);
	}

	/* Use eval_mcontext for tuple conversion work */
	oldcontext = FUNC1(FUNC15(estate));

	tupmap = FUNC5(portal->tupDesc,
										estate->tuple_store_desc,
										FUNC16("structure of query does not match function result type"));

	while (true)
	{
		uint64		i;

		FUNC3(portal, true, 50);

		/* SPI will have changed CurrentMemoryContext */
		FUNC1(FUNC15(estate));

		if (SPI_processed == 0)
			break;

		for (i = 0; i < SPI_processed; i++)
		{
			HeapTuple	tuple = SPI_tuptable->vals[i];

			if (tupmap)
				tuple = FUNC14(tuple, tupmap);
			FUNC18(estate->tuple_store, tuple);
			if (tupmap)
				FUNC17(tuple);
			processed++;
		}

		FUNC4(SPI_tuptable);
	}

	FUNC4(SPI_tuptable);
	FUNC2(portal);

	FUNC1(oldcontext);
	FUNC10(estate);

	estate->eval_processed = processed;
	FUNC13(estate, processed != 0);

	return PLPGSQL_RC_OK;
}