#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  leafTupdesc; } ;
struct TYPE_11__ {TYPE_3__* distances; TYPE_5__* giststate; } ;
struct TYPE_10__ {double value; int isnull; } ;
struct TYPE_9__ {int numberOfKeys; int numberOfOrderBys; TYPE_1__* orderByData; int /*<<< orphan*/  indexRelation; TYPE_1__* keyData; int /*<<< orphan*/  opaque; } ;
struct TYPE_8__ {int sk_flags; int /*<<< orphan*/  sk_subtype; int /*<<< orphan*/  sk_strategy; int /*<<< orphan*/  sk_argument; int /*<<< orphan*/  sk_collation; int /*<<< orphan*/  sk_func; scalar_t__ sk_attno; } ;
typedef  TYPE_1__* ScanKey ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  TYPE_2__* IndexScanDesc ;
typedef  TYPE_3__ IndexOrderByDistance ;
typedef  TYPE_4__* GISTScanOpaque ;
typedef  TYPE_5__ GISTSTATE ;
typedef  int GISTENTRY ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int SK_ISNULL ; 
 int SK_SEARCHNOTNULL ; 
 int SK_SEARCHNULL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 double FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,scalar_t__,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool
FUNC13(IndexScanDesc scan,
				  IndexTuple tuple,
				  Page page,
				  OffsetNumber offset,
				  bool *recheck_p,
				  bool *recheck_distances_p)
{
	GISTScanOpaque so = (GISTScanOpaque) scan->opaque;
	GISTSTATE  *giststate = so->giststate;
	ScanKey		key = scan->keyData;
	int			keySize = scan->numberOfKeys;
	IndexOrderByDistance *distance_p;
	Relation	r = scan->indexRelation;

	*recheck_p = false;
	*recheck_distances_p = false;

	/*
	 * If it's a leftover invalid tuple from pre-9.1, treat it as a match with
	 * minimum possible distances.  This means we'll always follow it to the
	 * referenced page.
	 */
	if (FUNC5(tuple))
	{
		int			i;

		if (FUNC4(page))	/* shouldn't happen */
			FUNC9(ERROR, "invalid GiST tuple found on leaf page");
		for (i = 0; i < scan->numberOfOrderBys; i++)
		{
			so->distances[i].value = -FUNC10();
			so->distances[i].isnull = false;
		}
		return true;
	}

	/* Check whether it matches according to the Consistent functions */
	while (keySize > 0)
	{
		Datum		datum;
		bool		isNull;

		datum = FUNC12(tuple,
							  key->sk_attno,
							  giststate->leafTupdesc,
							  &isNull);

		if (key->sk_flags & SK_ISNULL)
		{
			/*
			 * On non-leaf page we can't conclude that child hasn't NULL
			 * values because of assumption in GiST: union (VAL, NULL) is VAL.
			 * But if on non-leaf page key IS NULL, then all children are
			 * NULL.
			 */
			if (key->sk_flags & SK_SEARCHNULL)
			{
				if (FUNC4(page) && !isNull)
					return false;
			}
			else
			{
				FUNC0(key->sk_flags & SK_SEARCHNOTNULL);
				if (isNull)
					return false;
			}
		}
		else if (isNull)
		{
			return false;
		}
		else
		{
			Datum		test;
			bool		recheck;
			GISTENTRY	de;

			FUNC11(giststate, key->sk_attno - 1, &de,
						   datum, r, page, offset,
						   false, isNull);

			/*
			 * Call the Consistent function to evaluate the test.  The
			 * arguments are the index datum (as a GISTENTRY*), the comparison
			 * datum, the comparison operator's strategy number and subtype
			 * from pg_amop, and the recheck flag.
			 *
			 * (Presently there's no need to pass the subtype since it'll
			 * always be zero, but might as well pass it for possible future
			 * use.)
			 *
			 * We initialize the recheck flag to true (the safest assumption)
			 * in case the Consistent function forgets to set it.
			 */
			recheck = true;

			test = FUNC3(&key->sk_func,
									 key->sk_collation,
									 FUNC8(&de),
									 key->sk_argument,
									 FUNC6(key->sk_strategy),
									 FUNC7(key->sk_subtype),
									 FUNC8(&recheck));

			if (!FUNC1(test))
				return false;
			*recheck_p |= recheck;
		}

		key++;
		keySize--;
	}

	/* OK, it passes --- now let's compute the distances */
	key = scan->orderByData;
	distance_p = so->distances;
	keySize = scan->numberOfOrderBys;
	while (keySize > 0)
	{
		Datum		datum;
		bool		isNull;

		datum = FUNC12(tuple,
							  key->sk_attno,
							  giststate->leafTupdesc,
							  &isNull);

		if ((key->sk_flags & SK_ISNULL) || isNull)
		{
			/* Assume distance computes as null */
			distance_p->value = 0.0;
			distance_p->isnull = true;
		}
		else
		{
			Datum		dist;
			bool		recheck;
			GISTENTRY	de;

			FUNC11(giststate, key->sk_attno - 1, &de,
						   datum, r, page, offset,
						   false, isNull);

			/*
			 * Call the Distance function to evaluate the distance.  The
			 * arguments are the index datum (as a GISTENTRY*), the comparison
			 * datum, the ordering operator's strategy number and subtype from
			 * pg_amop, and the recheck flag.
			 *
			 * (Presently there's no need to pass the subtype since it'll
			 * always be zero, but might as well pass it for possible future
			 * use.)
			 *
			 * If the function sets the recheck flag, the returned distance is
			 * a lower bound on the true distance and needs to be rechecked.
			 * We initialize the flag to 'false'.  This flag was added in
			 * version 9.5; distance functions written before that won't know
			 * about the flag, but are expected to never be lossy.
			 */
			recheck = false;
			dist = FUNC3(&key->sk_func,
									 key->sk_collation,
									 FUNC8(&de),
									 key->sk_argument,
									 FUNC6(key->sk_strategy),
									 FUNC7(key->sk_subtype),
									 FUNC8(&recheck));
			*recheck_distances_p |= recheck;
			distance_p->value = FUNC2(dist);
			distance_p->isnull = false;
		}

		key++;
		distance_p++;
		keySize--;
	}

	return true;
}