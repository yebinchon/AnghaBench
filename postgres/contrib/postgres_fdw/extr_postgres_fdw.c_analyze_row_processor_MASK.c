#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  randstate; } ;
struct TYPE_4__ {int targrows; int samplerows; int numrows; int rowstoskip; int /*<<< orphan*/  temp_cxt; int /*<<< orphan*/  retrieved_attrs; int /*<<< orphan*/  attinmeta; int /*<<< orphan*/  rel; int /*<<< orphan*/ * rows; int /*<<< orphan*/  anl_cxt; TYPE_2__ rstate; } ;
typedef  TYPE_1__ PgFdwAnalyzeState ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(PGresult *res, int row, PgFdwAnalyzeState *astate)
{
	int			targrows = astate->targrows;
	int			pos;			/* array index to store tuple in */
	MemoryContext oldcontext;

	/* Always increment sample row counter. */
	astate->samplerows += 1;

	/*
	 * Determine the slot where this sample row should be stored.  Set pos to
	 * negative value to indicate the row should be skipped.
	 */
	if (astate->numrows < targrows)
	{
		/* First targrows rows are always included into the sample */
		pos = astate->numrows++;
	}
	else
	{
		/*
		 * Now we start replacing tuples in the sample until we reach the end
		 * of the relation.  Same algorithm as in acquire_sample_rows in
		 * analyze.c; see Jeff Vitter's paper.
		 */
		if (astate->rowstoskip < 0)
			astate->rowstoskip = FUNC4(&astate->rstate, astate->samplerows, targrows);

		if (astate->rowstoskip <= 0)
		{
			/* Choose a random reservoir element to replace. */
			pos = (int) (targrows * FUNC5(astate->rstate.randstate));
			FUNC0(pos >= 0 && pos < targrows);
			FUNC2(astate->rows[pos]);
		}
		else
		{
			/* Skip this tuple. */
			pos = -1;
		}

		astate->rowstoskip -= 1;
	}

	if (pos >= 0)
	{
		/*
		 * Create sample tuple from current result row, and store it in the
		 * position determined above.  The tuple has to be created in anl_cxt.
		 */
		oldcontext = FUNC1(astate->anl_cxt);

		astate->rows[pos] = FUNC3(res, row,
													   astate->rel,
													   astate->attinmeta,
													   astate->retrieved_attrs,
													   NULL,
													   astate->temp_cxt);

		FUNC1(oldcontext);
	}
}