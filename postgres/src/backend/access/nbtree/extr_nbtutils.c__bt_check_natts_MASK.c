#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int16 ;
struct TYPE_4__ {int t_info; int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  TYPE_1__* IndexTuple ;
typedef  int /*<<< orphan*/  BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BT_N_KEYS_OFFSET_MASK ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FirstOffsetNumber ; 
 int INDEX_ALT_TID_MASK ; 
 scalar_t__ INDEX_MAX_KEYS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ P_HIKEY ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 

bool
FUNC15(Relation rel, bool heapkeyspace, Page page, OffsetNumber offnum)
{
	int16		natts = FUNC3(rel);
	int16		nkeyatts = FUNC4(rel);
	BTPageOpaque opaque = (BTPageOpaque) FUNC13(page);
	IndexTuple	itup;
	int			tupnatts;

	/*
	 * We cannot reliably test a deleted or half-dead page, since they have
	 * dummy high keys
	 */
	if (FUNC7(opaque))
		return true;

	FUNC0(offnum >= FirstOffsetNumber &&
		   offnum <= FUNC12(page));

	/*
	 * Mask allocated for number of keys in index tuple must be able to fit
	 * maximum possible number of index attributes
	 */
	FUNC14(BT_N_KEYS_OFFSET_MASK >= INDEX_MAX_KEYS,
					 "BT_N_KEYS_OFFSET_MASK can't fit INDEX_MAX_KEYS");

	itup = (IndexTuple) FUNC10(page, FUNC11(page, offnum));
	tupnatts = FUNC2(itup, rel);

	if (FUNC8(opaque))
	{
		if (offnum >= FUNC6(opaque))
		{
			/*
			 * Non-pivot tuples currently never use alternative heap TID
			 * representation -- even those within heapkeyspace indexes
			 */
			if ((itup->t_info & INDEX_ALT_TID_MASK) != 0)
				return false;

			/*
			 * Leaf tuples that are not the page high key (non-pivot tuples)
			 * should never be truncated.  (Note that tupnatts must have been
			 * inferred, rather than coming from an explicit on-disk
			 * representation.)
			 */
			return tupnatts == natts;
		}
		else
		{
			/*
			 * Rightmost page doesn't contain a page high key, so tuple was
			 * checked above as ordinary leaf tuple
			 */
			FUNC0(!FUNC9(opaque));

			/*
			 * !heapkeyspace high key tuple contains only key attributes. Note
			 * that tupnatts will only have been explicitly represented in
			 * !heapkeyspace indexes that happen to have non-key attributes.
			 */
			if (!heapkeyspace)
				return tupnatts == nkeyatts;

			/* Use generic heapkeyspace pivot tuple handling */
		}
	}
	else						/* !P_ISLEAF(opaque) */
	{
		if (offnum == FUNC6(opaque))
		{
			/*
			 * The first tuple on any internal page (possibly the first after
			 * its high key) is its negative infinity tuple.  Negative
			 * infinity tuples are always truncated to zero attributes.  They
			 * are a particular kind of pivot tuple.
			 */
			if (heapkeyspace)
				return tupnatts == 0;

			/*
			 * The number of attributes won't be explicitly represented if the
			 * negative infinity tuple was generated during a page split that
			 * occurred with a version of Postgres before v11.  There must be
			 * a problem when there is an explicit representation that is
			 * non-zero, or when there is no explicit representation and the
			 * tuple is evidently not a pre-pg_upgrade tuple.
			 *
			 * Prior to v11, downlinks always had P_HIKEY as their offset. Use
			 * that to decide if the tuple is a pre-v11 tuple.
			 */
			return tupnatts == 0 ||
				((itup->t_info & INDEX_ALT_TID_MASK) == 0 &&
				 FUNC5(&(itup->t_tid)) == P_HIKEY);
		}
		else
		{
			/*
			 * !heapkeyspace downlink tuple with separator key contains only
			 * key attributes.  Note that tupnatts will only have been
			 * explicitly represented in !heapkeyspace indexes that happen to
			 * have non-key attributes.
			 */
			if (!heapkeyspace)
				return tupnatts == nkeyatts;

			/* Use generic heapkeyspace pivot tuple handling */
		}

	}

	/* Handle heapkeyspace pivot tuples (excluding minus infinity items) */
	FUNC0(heapkeyspace);

	/*
	 * Explicit representation of the number of attributes is mandatory with
	 * heapkeyspace index pivot tuples, regardless of whether or not there are
	 * non-key attributes.
	 */
	if ((itup->t_info & INDEX_ALT_TID_MASK) == 0)
		return false;

	/*
	 * Heap TID is a tiebreaker key attribute, so it cannot be untruncated
	 * when any other key attribute is truncated
	 */
	if (FUNC1(itup) != NULL && tupnatts != nkeyatts)
		return false;

	/*
	 * Pivot tuple must have at least one untruncated key attribute (minus
	 * infinity pivot tuples are the only exception).  Pivot tuples can never
	 * represent that there is a value present for a key attribute that
	 * exceeds pg_index.indnkeyatts for the index.
	 */
	return tupnatts > 0 && tupnatts <= nkeyatts;
}