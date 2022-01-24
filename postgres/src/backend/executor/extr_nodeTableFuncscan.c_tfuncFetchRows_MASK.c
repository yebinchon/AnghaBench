#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_2__* ss_ScanTupleSlot; } ;
struct TYPE_20__ {int ordinal; int /*<<< orphan*/  perTableCxt; int /*<<< orphan*/ * opaque; int /*<<< orphan*/  docexpr; TYPE_3__ ss; int /*<<< orphan*/  tupstore; TYPE_5__* routine; } ;
typedef  TYPE_4__ TableFuncScanState ;
struct TYPE_21__ {int /*<<< orphan*/  (* DestroyOpaque ) (TYPE_4__*) ;int /*<<< orphan*/  (* InitOpaque ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_5__ TableFuncRoutine ;
struct TYPE_22__ {int /*<<< orphan*/  ecxt_per_query_memory; } ;
struct TYPE_18__ {TYPE_1__* tts_tupleDescriptor; } ;
struct TYPE_17__ {int /*<<< orphan*/  natts; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_6__ ExprContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_mem ; 

__attribute__((used)) static void
FUNC14(TableFuncScanState *tstate, ExprContext *econtext)
{
	const TableFuncRoutine *routine = tstate->routine;
	MemoryContext oldcxt;
	Datum		value;
	bool		isnull;

	FUNC0(tstate->opaque == NULL);

	/* build tuplestore for the result */
	oldcxt = FUNC3(econtext->ecxt_per_query_memory);
	tstate->tupstore = FUNC13(false, false, work_mem);

	/*
	 * Each call to fetch a new set of rows - of which there may be very many
	 * if XMLTABLE is being used in a lateral join - will allocate a possibly
	 * substantial amount of memory, so we cannot use the per-query context
	 * here. perTableCxt now serves the same function as "argcontext" does in
	 * FunctionScan - a place to store per-one-call (i.e. one result table)
	 * lifetime data (as opposed to per-query or per-result-tuple).
	 */
	FUNC3(tstate->perTableCxt);

	FUNC7();
	{
		routine->InitOpaque(tstate,
							tstate->ss.ss_ScanTupleSlot->tts_tupleDescriptor->natts);

		/*
		 * If evaluating the document expression returns NULL, the table
		 * expression is empty and we return immediately.
		 */
		value = FUNC1(tstate->docexpr, econtext, &isnull);

		if (!isnull)
		{
			/* otherwise, pass the document value to the table builder */
			FUNC11(tstate, econtext, value);

			/* initialize ordinality counter */
			tstate->ordinal = 1;

			/* Load all rows into the tuplestore, and we're done */
			FUNC12(tstate, econtext);
		}
	}
	FUNC4();
	{
		if (tstate->opaque != NULL)
			routine->DestroyOpaque(tstate);
		FUNC6();
	}
	FUNC5();

	/* clean up and return to original memory context */

	if (tstate->opaque != NULL)
	{
		routine->DestroyOpaque(tstate);
		tstate->opaque = NULL;
	}

	FUNC3(oldcxt);
	FUNC2(tstate->perTableCxt);

	return;
}