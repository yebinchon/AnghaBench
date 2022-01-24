#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_8__ {int numberOfKeys; TYPE_1__* keyData; } ;
struct TYPE_7__ {scalar_t__ opaque; int /*<<< orphan*/  indexRelation; } ;
struct TYPE_6__ {int sk_attno; int sk_flags; int /*<<< orphan*/  sk_argument; int /*<<< orphan*/  sk_collation; int /*<<< orphan*/  sk_func; } ;
typedef  TYPE_1__* ScanKey ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  TYPE_2__* IndexScanDesc ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__* BTScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int SK_BT_NULLS_FIRST ; 
 int SK_BT_REQBKWD ; 
 int SK_BT_REQFWD ; 
 int SK_ISNULL ; 
 int SK_ROW_HEADER ; 
 int SK_SEARCHNOTNULL ; 
 int SK_SEARCHNULL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 

bool
FUNC9(IndexScanDesc scan, IndexTuple tuple, int tupnatts,
			  ScanDirection dir, bool *continuescan)
{
	TupleDesc	tupdesc;
	BTScanOpaque so;
	int			keysz;
	int			ikey;
	ScanKey		key;

	FUNC0(FUNC1(tuple, scan->indexRelation) == tupnatts);

	*continuescan = true;		/* default assumption */

	tupdesc = FUNC4(scan->indexRelation);
	so = (BTScanOpaque) scan->opaque;
	keysz = so->numberOfKeys;

	for (key = so->keyData, ikey = 0; ikey < keysz; key++, ikey++)
	{
		Datum		datum;
		bool		isNull;
		Datum		test;

		if (key->sk_attno > tupnatts)
		{
			/*
			 * This attribute is truncated (must be high key).  The value for
			 * this attribute in the first non-pivot tuple on the page to the
			 * right could be any possible value.  Assume that truncated
			 * attribute passes the qual.
			 */
			FUNC0(FUNC6(dir));
			continue;
		}

		/* row-comparison keys need special processing */
		if (key->sk_flags & SK_ROW_HEADER)
		{
			if (FUNC7(key, tuple, tupnatts, tupdesc, dir,
									 continuescan))
				continue;
			return false;
		}

		datum = FUNC8(tuple,
							  key->sk_attno,
							  tupdesc,
							  &isNull);

		if (key->sk_flags & SK_ISNULL)
		{
			/* Handle IS NULL/NOT NULL tests */
			if (key->sk_flags & SK_SEARCHNULL)
			{
				if (isNull)
					continue;	/* tuple satisfies this qual */
			}
			else
			{
				FUNC0(key->sk_flags & SK_SEARCHNOTNULL);
				if (!isNull)
					continue;	/* tuple satisfies this qual */
			}

			/*
			 * Tuple fails this qual.  If it's a required qual for the current
			 * scan direction, then we can conclude no further tuples will
			 * pass, either.
			 */
			if ((key->sk_flags & SK_BT_REQFWD) &&
				FUNC6(dir))
				*continuescan = false;
			else if ((key->sk_flags & SK_BT_REQBKWD) &&
					 FUNC5(dir))
				*continuescan = false;

			/*
			 * In any case, this indextuple doesn't match the qual.
			 */
			return false;
		}

		if (isNull)
		{
			if (key->sk_flags & SK_BT_NULLS_FIRST)
			{
				/*
				 * Since NULLs are sorted before non-NULLs, we know we have
				 * reached the lower limit of the range of values for this
				 * index attr.  On a backward scan, we can stop if this qual
				 * is one of the "must match" subset.  We can stop regardless
				 * of whether the qual is > or <, so long as it's required,
				 * because it's not possible for any future tuples to pass. On
				 * a forward scan, however, we must keep going, because we may
				 * have initially positioned to the start of the index.
				 */
				if ((key->sk_flags & (SK_BT_REQFWD | SK_BT_REQBKWD)) &&
					FUNC5(dir))
					*continuescan = false;
			}
			else
			{
				/*
				 * Since NULLs are sorted after non-NULLs, we know we have
				 * reached the upper limit of the range of values for this
				 * index attr.  On a forward scan, we can stop if this qual is
				 * one of the "must match" subset.  We can stop regardless of
				 * whether the qual is > or <, so long as it's required,
				 * because it's not possible for any future tuples to pass. On
				 * a backward scan, however, we must keep going, because we
				 * may have initially positioned to the end of the index.
				 */
				if ((key->sk_flags & (SK_BT_REQFWD | SK_BT_REQBKWD)) &&
					FUNC6(dir))
					*continuescan = false;
			}

			/*
			 * In any case, this indextuple doesn't match the qual.
			 */
			return false;
		}

		test = FUNC3(&key->sk_func, key->sk_collation,
								 datum, key->sk_argument);

		if (!FUNC2(test))
		{
			/*
			 * Tuple fails this qual.  If it's a required qual for the current
			 * scan direction, then we can conclude no further tuples will
			 * pass, either.
			 *
			 * Note: because we stop the scan as soon as any required equality
			 * qual fails, it is critical that equality quals be used for the
			 * initial positioning in _bt_first() when they are available. See
			 * comments in _bt_first().
			 */
			if ((key->sk_flags & SK_BT_REQFWD) &&
				FUNC6(dir))
				*continuescan = false;
			else if ((key->sk_flags & SK_BT_REQBKWD) &&
					 FUNC5(dir))
				*continuescan = false;

			/*
			 * In any case, this indextuple doesn't match the qual.
			 */
			return false;
		}
	}

	/* If we get here, the tuple passes all index quals. */
	return true;
}