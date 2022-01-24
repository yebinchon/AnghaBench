#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ isshared; } ;
struct TYPE_8__ {scalar_t__ instrument; TYPE_1__* state; scalar_t__ plan; } ;
struct TYPE_9__ {TYPE_2__ ps; } ;
struct TYPE_10__ {int biss_RuntimeKeysReady; scalar_t__ biss_NumRuntimeKeys; scalar_t__ biss_NumArrayKeys; TYPE_3__ ss; int /*<<< orphan*/  biss_NumScanKeys; int /*<<< orphan*/  biss_ScanKeys; int /*<<< orphan*/  biss_ScanDesc; int /*<<< orphan*/  biss_ArrayKeys; int /*<<< orphan*/ * biss_result; } ;
struct TYPE_7__ {int /*<<< orphan*/ * es_query_dsa; } ;
typedef  int /*<<< orphan*/  TIDBitmap ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  IndexScanDesc ;
typedef  TYPE_4__ BitmapIndexScanState ;
typedef  TYPE_5__ BitmapIndexScan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,double) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (long,int /*<<< orphan*/ *) ; 
 long work_mem ; 

Node *
FUNC8(BitmapIndexScanState *node)
{
	TIDBitmap  *tbm;
	IndexScanDesc scandesc;
	double		nTuples = 0;
	bool		doscan;

	/* must provide our own instrumentation support */
	if (node->ss.ps.instrument)
		FUNC3(node->ss.ps.instrument);

	/*
	 * extract necessary information from index scan node
	 */
	scandesc = node->biss_ScanDesc;

	/*
	 * If we have runtime keys and they've not already been set up, do it now.
	 * Array keys are also treated as runtime keys; note that if ExecReScan
	 * returns with biss_RuntimeKeysReady still false, then there is an empty
	 * array key so we should do nothing.
	 */
	if (!node->biss_RuntimeKeysReady &&
		(node->biss_NumRuntimeKeys != 0 || node->biss_NumArrayKeys != 0))
	{
		FUNC2((PlanState *) node);
		doscan = node->biss_RuntimeKeysReady;
	}
	else
		doscan = true;

	/*
	 * Prepare the result bitmap.  Normally we just create a new one to pass
	 * back; however, our parent node is allowed to store a pre-made one into
	 * node->biss_result, in which case we just OR our tuple IDs into the
	 * existing bitmap.  (This saves needing explicit UNION steps.)
	 */
	if (node->biss_result)
	{
		tbm = node->biss_result;
		node->biss_result = NULL;	/* reset for next time */
	}
	else
	{
		/* XXX should we use less than work_mem for this? */
		tbm = FUNC7(work_mem * 1024L,
						 ((BitmapIndexScan *) node->ss.ps.plan)->isshared ?
						 node->ss.ps.state->es_query_dsa : NULL);
	}

	/*
	 * Get TIDs from index and insert into bitmap
	 */
	while (doscan)
	{
		nTuples += (double) FUNC5(scandesc, tbm);

		FUNC0();

		doscan = FUNC1(node->biss_ArrayKeys,
										   node->biss_NumArrayKeys);
		if (doscan)				/* reset index scan */
			FUNC6(node->biss_ScanDesc,
						 node->biss_ScanKeys, node->biss_NumScanKeys,
						 NULL, 0);
	}

	/* must provide our own instrumentation support */
	if (node->ss.ps.instrument)
		FUNC4(node->ss.ps.instrument, nTuples);

	return (Node *) tbm;
}