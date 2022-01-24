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
typedef  int int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_5__ {int keysz; int /*<<< orphan*/ * scantid; int /*<<< orphan*/  pivotsearch; scalar_t__ heapkeyspace; TYPE_1__* scankeys; } ;
struct TYPE_4__ {int sk_flags; int /*<<< orphan*/  sk_argument; int /*<<< orphan*/  sk_collation; int /*<<< orphan*/  sk_func; int /*<<< orphan*/  sk_attno; } ;
typedef  TYPE_1__* ScanKey ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_2__* BTScanInsert ;
typedef  int /*<<< orphan*/  BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int SK_BT_DESC ; 
 int SK_BT_NULLS_FIRST ; 
 int SK_ISNULL ; 
 int FUNC15 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int32
FUNC17(Relation rel,
			BTScanInsert key,
			Page page,
			OffsetNumber offnum)
{
	TupleDesc	itupdesc = FUNC14(rel);
	BTPageOpaque opaque = (BTPageOpaque) FUNC13(page);
	IndexTuple	itup;
	ItemPointer heapTid;
	ScanKey		scankey;
	int			ncmpkey;
	int			ntupatts;

	FUNC0(FUNC15(rel, key->heapkeyspace, page, offnum));
	FUNC0(key->keysz <= FUNC6(rel));
	FUNC0(key->heapkeyspace || key->scantid == NULL);

	/*
	 * Force result ">" if target item is first data item on an internal page
	 * --- see NOTE above.
	 */
	if (!FUNC10(opaque) && offnum == FUNC9(opaque))
		return 1;

	itup = (IndexTuple) FUNC11(page, FUNC12(page, offnum));
	ntupatts = FUNC2(itup, rel);

	/*
	 * The scan key is set up with the attribute number associated with each
	 * term in the key.  It is important that, if the index is multi-key, the
	 * scan contain the first k key attributes, and that they be in order.  If
	 * you think about how multi-key ordering works, you'll understand why
	 * this is.
	 *
	 * We don't test for violation of this condition here, however.  The
	 * initial setup for the index scan had better have gotten it right (see
	 * _bt_first).
	 */

	ncmpkey = FUNC8(ntupatts, key->keysz);
	FUNC0(key->heapkeyspace || ncmpkey == key->keysz);
	scankey = key->scankeys;
	for (int i = 1; i <= ncmpkey; i++)
	{
		Datum		datum;
		bool		isNull;
		int32		result;

		datum = FUNC16(itup, scankey->sk_attno, itupdesc, &isNull);

		/* see comments about NULLs handling in btbuild */
		if (scankey->sk_flags & SK_ISNULL)	/* key is NULL */
		{
			if (isNull)
				result = 0;		/* NULL "=" NULL */
			else if (scankey->sk_flags & SK_BT_NULLS_FIRST)
				result = -1;	/* NULL "<" NOT_NULL */
			else
				result = 1;		/* NULL ">" NOT_NULL */
		}
		else if (isNull)		/* key is NOT_NULL and item is NULL */
		{
			if (scankey->sk_flags & SK_BT_NULLS_FIRST)
				result = 1;		/* NOT_NULL ">" NULL */
			else
				result = -1;	/* NOT_NULL "<" NULL */
		}
		else
		{
			/*
			 * The sk_func needs to be passed the index value as left arg and
			 * the sk_argument as right arg (they might be of different
			 * types).  Since it is convenient for callers to think of
			 * _bt_compare as comparing the scankey to the index item, we have
			 * to flip the sign of the comparison result.  (Unless it's a DESC
			 * column, in which case we *don't* flip the sign.)
			 */
			result = FUNC3(FUNC4(&scankey->sk_func,
													 scankey->sk_collation,
													 datum,
													 scankey->sk_argument));

			if (!(scankey->sk_flags & SK_BT_DESC))
				FUNC5(result);
		}

		/* if the keys are unequal, return the difference */
		if (result != 0)
			return result;

		scankey++;
	}

	/*
	 * All non-truncated attributes (other than heap TID) were found to be
	 * equal.  Treat truncated attributes as minus infinity when scankey has a
	 * key attribute value that would otherwise be compared directly.
	 *
	 * Note: it doesn't matter if ntupatts includes non-key attributes;
	 * scankey won't, so explicitly excluding non-key attributes isn't
	 * necessary.
	 */
	if (key->keysz > ntupatts)
		return 1;

	/*
	 * Use the heap TID attribute and scantid to try to break the tie.  The
	 * rules are the same as any other key attribute -- only the
	 * representation differs.
	 */
	heapTid = FUNC1(itup);
	if (key->scantid == NULL)
	{
		/*
		 * Most searches have a scankey that is considered greater than a
		 * truncated pivot tuple if and when the scankey has equal values for
		 * attributes up to and including the least significant untruncated
		 * attribute in tuple.
		 *
		 * For example, if an index has the minimum two attributes (single
		 * user key attribute, plus heap TID attribute), and a page's high key
		 * is ('foo', -inf), and scankey is ('foo', <omitted>), the search
		 * will not descend to the page to the left.  The search will descend
		 * right instead.  The truncated attribute in pivot tuple means that
		 * all non-pivot tuples on the page to the left are strictly < 'foo',
		 * so it isn't necessary to descend left.  In other words, search
		 * doesn't have to descend left because it isn't interested in a match
		 * that has a heap TID value of -inf.
		 *
		 * However, some searches (pivotsearch searches) actually require that
		 * we descend left when this happens.  -inf is treated as a possible
		 * match for omitted scankey attribute(s).  This is needed by page
		 * deletion, which must re-find leaf pages that are targets for
		 * deletion using their high keys.
		 *
		 * Note: the heap TID part of the test ensures that scankey is being
		 * compared to a pivot tuple with one or more truncated key
		 * attributes.
		 *
		 * Note: pg_upgrade'd !heapkeyspace indexes must always descend to the
		 * left here, since they have no heap TID attribute (and cannot have
		 * any -inf key values in any case, since truncation can only remove
		 * non-key attributes).  !heapkeyspace searches must always be
		 * prepared to deal with matches on both sides of the pivot once the
		 * leaf level is reached.
		 */
		if (key->heapkeyspace && !key->pivotsearch &&
			key->keysz == ntupatts && heapTid == NULL)
			return 1;

		/* All provided scankey arguments found to be equal */
		return 0;
	}

	/*
	 * Treat truncated heap TID as minus infinity, since scankey has a key
	 * attribute value (scantid) that would otherwise be compared directly
	 */
	FUNC0(key->keysz == FUNC6(rel));
	if (heapTid == NULL)
		return 1;

	FUNC0(ntupatts >= FUNC6(rel));
	return FUNC7(key->scantid, heapTid);
}