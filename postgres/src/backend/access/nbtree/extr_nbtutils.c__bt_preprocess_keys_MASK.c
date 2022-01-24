#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xform ;
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_18__ {int qual_ok; int numberOfKeys; TYPE_2__* keyData; TYPE_2__* arrayKeyData; } ;
struct TYPE_17__ {int numberOfKeys; TYPE_2__* keyData; TYPE_1__* indexRelation; int /*<<< orphan*/  opaque; } ;
struct TYPE_16__ {int sk_attno; int sk_flags; int sk_strategy; } ;
struct TYPE_15__ {int /*<<< orphan*/ * rd_indoption; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* ScanKey ;
typedef  TYPE_3__* IndexScanDesc ;
typedef  TYPE_4__* BTScanOpaque ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BTEqualStrategyNumber ; 
 int BTGreaterEqualStrategyNumber ; 
 int BTGreaterStrategyNumber ; 
 int BTLessEqualStrategyNumber ; 
 int BTLessStrategyNumber ; 
 int BTMaxStrategyNumber ; 
 int /*<<< orphan*/  ERROR ; 
 int SK_ROW_HEADER ; 
 int SK_SEARCHNULL ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,int /*<<< orphan*/ ,int) ; 

void
FUNC7(IndexScanDesc scan)
{
	BTScanOpaque so = (BTScanOpaque) scan->opaque;
	int			numberOfKeys = scan->numberOfKeys;
	int16	   *indoption = scan->indexRelation->rd_indoption;
	int			new_numberOfKeys;
	int			numberOfEqualCols;
	ScanKey		inkeys;
	ScanKey		outkeys;
	ScanKey		cur;
	ScanKey		xform[BTMaxStrategyNumber];
	bool		test_result;
	int			i,
				j;
	AttrNumber	attno;

	/* initialize result variables */
	so->qual_ok = true;
	so->numberOfKeys = 0;

	if (numberOfKeys < 1)
		return;					/* done if qual-less scan */

	/*
	 * Read so->arrayKeyData if array keys are present, else scan->keyData
	 */
	if (so->arrayKeyData != NULL)
		inkeys = so->arrayKeyData;
	else
		inkeys = scan->keyData;

	outkeys = so->keyData;
	cur = &inkeys[0];
	/* we check that input keys are correctly ordered */
	if (cur->sk_attno < 1)
		FUNC4(ERROR, "btree index keys must be ordered by attribute");

	/* We can short-circuit most of the work if there's just one key */
	if (numberOfKeys == 1)
	{
		/* Apply indoption to scankey (might change sk_strategy!) */
		if (!FUNC2(cur, indoption))
			so->qual_ok = false;
		FUNC5(outkeys, cur, sizeof(ScanKeyData));
		so->numberOfKeys = 1;
		/* We can mark the qual as required if it's for first index col */
		if (cur->sk_attno == 1)
			FUNC3(outkeys);
		return;
	}

	/*
	 * Otherwise, do the full set of pushups.
	 */
	new_numberOfKeys = 0;
	numberOfEqualCols = 0;

	/*
	 * Initialize for processing of keys for attr 1.
	 *
	 * xform[i] points to the currently best scan key of strategy type i+1; it
	 * is NULL if we haven't yet found such a key for this attr.
	 */
	attno = 1;
	FUNC6(xform, 0, sizeof(xform));

	/*
	 * Loop iterates from 0 to numberOfKeys inclusive; we use the last pass to
	 * handle after-last-key processing.  Actual exit from the loop is at the
	 * "break" statement below.
	 */
	for (i = 0;; cur++, i++)
	{
		if (i < numberOfKeys)
		{
			/* Apply indoption to scankey (might change sk_strategy!) */
			if (!FUNC2(cur, indoption))
			{
				/* NULL can't be matched, so give up */
				so->qual_ok = false;
				return;
			}
		}

		/*
		 * If we are at the end of the keys for a particular attr, finish up
		 * processing and emit the cleaned-up keys.
		 */
		if (i == numberOfKeys || cur->sk_attno != attno)
		{
			int			priorNumberOfEqualCols = numberOfEqualCols;

			/* check input keys are correctly ordered */
			if (i < numberOfKeys && cur->sk_attno < attno)
				FUNC4(ERROR, "btree index keys must be ordered by attribute");

			/*
			 * If = has been specified, all other keys can be eliminated as
			 * redundant.  If we have a case like key = 1 AND key > 2, we can
			 * set qual_ok to false and abandon further processing.
			 *
			 * We also have to deal with the case of "key IS NULL", which is
			 * unsatisfiable in combination with any other index condition. By
			 * the time we get here, that's been classified as an equality
			 * check, and we've rejected any combination of it with a regular
			 * equality condition; but not with other types of conditions.
			 */
			if (xform[BTEqualStrategyNumber - 1])
			{
				ScanKey		eq = xform[BTEqualStrategyNumber - 1];

				for (j = BTMaxStrategyNumber; --j >= 0;)
				{
					ScanKey		chk = xform[j];

					if (!chk || j == (BTEqualStrategyNumber - 1))
						continue;

					if (eq->sk_flags & SK_SEARCHNULL)
					{
						/* IS NULL is contradictory to anything else */
						so->qual_ok = false;
						return;
					}

					if (FUNC1(scan, chk, eq, chk,
												 &test_result))
					{
						if (!test_result)
						{
							/* keys proven mutually contradictory */
							so->qual_ok = false;
							return;
						}
						/* else discard the redundant non-equality key */
						xform[j] = NULL;
					}
					/* else, cannot determine redundancy, keep both keys */
				}
				/* track number of attrs for which we have "=" keys */
				numberOfEqualCols++;
			}

			/* try to keep only one of <, <= */
			if (xform[BTLessStrategyNumber - 1]
				&& xform[BTLessEqualStrategyNumber - 1])
			{
				ScanKey		lt = xform[BTLessStrategyNumber - 1];
				ScanKey		le = xform[BTLessEqualStrategyNumber - 1];

				if (FUNC1(scan, le, lt, le,
											 &test_result))
				{
					if (test_result)
						xform[BTLessEqualStrategyNumber - 1] = NULL;
					else
						xform[BTLessStrategyNumber - 1] = NULL;
				}
			}

			/* try to keep only one of >, >= */
			if (xform[BTGreaterStrategyNumber - 1]
				&& xform[BTGreaterEqualStrategyNumber - 1])
			{
				ScanKey		gt = xform[BTGreaterStrategyNumber - 1];
				ScanKey		ge = xform[BTGreaterEqualStrategyNumber - 1];

				if (FUNC1(scan, ge, gt, ge,
											 &test_result))
				{
					if (test_result)
						xform[BTGreaterEqualStrategyNumber - 1] = NULL;
					else
						xform[BTGreaterStrategyNumber - 1] = NULL;
				}
			}

			/*
			 * Emit the cleaned-up keys into the outkeys[] array, and then
			 * mark them if they are required.  They are required (possibly
			 * only in one direction) if all attrs before this one had "=".
			 */
			for (j = BTMaxStrategyNumber; --j >= 0;)
			{
				if (xform[j])
				{
					ScanKey		outkey = &outkeys[new_numberOfKeys++];

					FUNC5(outkey, xform[j], sizeof(ScanKeyData));
					if (priorNumberOfEqualCols == attno - 1)
						FUNC3(outkey);
				}
			}

			/*
			 * Exit loop here if done.
			 */
			if (i == numberOfKeys)
				break;

			/* Re-initialize for new attno */
			attno = cur->sk_attno;
			FUNC6(xform, 0, sizeof(xform));
		}

		/* check strategy this key's operator corresponds to */
		j = cur->sk_strategy - 1;

		/* if row comparison, push it directly to the output array */
		if (cur->sk_flags & SK_ROW_HEADER)
		{
			ScanKey		outkey = &outkeys[new_numberOfKeys++];

			FUNC5(outkey, cur, sizeof(ScanKeyData));
			if (numberOfEqualCols == attno - 1)
				FUNC3(outkey);

			/*
			 * We don't support RowCompare using equality; such a qual would
			 * mess up the numberOfEqualCols tracking.
			 */
			FUNC0(j != (BTEqualStrategyNumber - 1));
			continue;
		}

		/* have we seen one of these before? */
		if (xform[j] == NULL)
		{
			/* nope, so remember this scankey */
			xform[j] = cur;
		}
		else
		{
			/* yup, keep only the more restrictive key */
			if (FUNC1(scan, cur, cur, xform[j],
										 &test_result))
			{
				if (test_result)
					xform[j] = cur;
				else if (j == (BTEqualStrategyNumber - 1))
				{
					/* key == a && key == b, but a != b */
					so->qual_ok = false;
					return;
				}
				/* else old key is more restrictive, keep it */
			}
			else
			{
				/*
				 * We can't determine which key is more restrictive.  Keep the
				 * previous one in xform[j] and push this one directly to the
				 * output array.
				 */
				ScanKey		outkey = &outkeys[new_numberOfKeys++];

				FUNC5(outkey, cur, sizeof(ScanKeyData));
				if (numberOfEqualCols == attno - 1)
					FUNC3(outkey);
			}
		}
	}

	so->numberOfKeys = new_numberOfKeys;
}