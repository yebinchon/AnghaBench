#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_19__ {scalar_t__ eval_processed; scalar_t__* datums; } ;
struct TYPE_18__ {long how_many; size_t curvar; int /*<<< orphan*/  direction; TYPE_1__* target; int /*<<< orphan*/  is_move; scalar_t__ expr; } ;
struct TYPE_17__ {int /*<<< orphan*/  value; int /*<<< orphan*/  refname; scalar_t__ isnull; } ;
struct TYPE_16__ {int /*<<< orphan*/  tupdesc; int /*<<< orphan*/ ** vals; } ;
struct TYPE_15__ {size_t dno; } ;
typedef  TYPE_2__ SPITupleTable ;
typedef  int /*<<< orphan*/ * Portal ;
typedef  int /*<<< orphan*/  PLpgSQL_variable ;
typedef  TYPE_3__ PLpgSQL_var ;
typedef  TYPE_4__ PLpgSQL_stmt_fetch ;
typedef  TYPE_5__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_CURSOR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PLPGSQL_RC_OK ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ SPI_processed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 TYPE_2__* SPI_tuptable ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 long FUNC10 (TYPE_5__*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 

__attribute__((used)) static int
FUNC14(PLpgSQL_execstate *estate, PLpgSQL_stmt_fetch *stmt)
{
	PLpgSQL_var *curvar;
	long		how_many = stmt->how_many;
	SPITupleTable *tuptab;
	Portal		portal;
	char	   *curname;
	uint64		n;
	MemoryContext oldcontext;

	/* ----------
	 * Get the portal of the cursor by name
	 * ----------
	 */
	curvar = (PLpgSQL_var *) (estate->datums[stmt->curvar]);
	if (curvar->isnull)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC8("cursor variable \"%s\" is null", curvar->refname)));

	/* Use eval_mcontext for short-lived string */
	oldcontext = FUNC0(FUNC13(estate));
	curname = FUNC5(curvar->value);
	FUNC0(oldcontext);

	portal = FUNC1(curname);
	if (portal == NULL)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_UNDEFINED_CURSOR),
				 FUNC8("cursor \"%s\" does not exist", curname)));

	/* Calculate position for FETCH_RELATIVE or FETCH_ABSOLUTE */
	if (stmt->expr)
	{
		bool		isnull;

		/* XXX should be doing this in LONG not INT width */
		how_many = FUNC10(estate, stmt->expr, &isnull);

		if (isnull)
			FUNC6(ERROR,
					(FUNC7(ERRCODE_NULL_VALUE_NOT_ALLOWED),
					 FUNC8("relative or absolute cursor position is null")));

		FUNC9(estate);
	}

	if (!stmt->is_move)
	{
		PLpgSQL_variable *target;

		/* ----------
		 * Fetch 1 tuple from the cursor
		 * ----------
		 */
		FUNC3(portal, stmt->direction, how_many);
		tuptab = SPI_tuptable;
		n = SPI_processed;

		/* ----------
		 * Set the target appropriately.
		 * ----------
		 */
		target = (PLpgSQL_variable *) estate->datums[stmt->target->dno];
		if (n == 0)
			FUNC11(estate, target, NULL, tuptab->tupdesc);
		else
			FUNC11(estate, target, tuptab->vals[0], tuptab->tupdesc);

		FUNC9(estate);
		FUNC2(tuptab);
	}
	else
	{
		/* Move the cursor */
		FUNC4(portal, stmt->direction, how_many);
		n = SPI_processed;
	}

	/* Set the ROW_COUNT and the global FOUND variable appropriately. */
	estate->eval_processed = n;
	FUNC12(estate, n != 0);

	return PLPGSQL_RC_OK;
}