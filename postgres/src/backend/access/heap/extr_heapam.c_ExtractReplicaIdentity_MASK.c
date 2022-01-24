#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* TupleDesc ;
struct TYPE_14__ {TYPE_1__* rd_rel; } ;
struct TYPE_13__ {int natts; } ;
struct TYPE_12__ {char relreplident; } ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FirstLowInvalidHeapAttributeNumber ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INDEX_ATTR_BITMAP_IDENTITY_KEY ; 
 int MaxHeapAttributeNumber ; 
 char REPLICA_IDENTITY_FULL ; 
 char REPLICA_IDENTITY_NOTHING ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static HeapTuple
FUNC12(Relation relation, HeapTuple tp, bool key_changed,
					   bool *copy)
{
	TupleDesc	desc = FUNC2(relation);
	char		replident = relation->rd_rel->relreplident;
	Bitmapset  *idattrs;
	HeapTuple	key_tuple;
	bool		nulls[MaxHeapAttributeNumber];
	Datum		values[MaxHeapAttributeNumber];

	*copy = false;

	if (!FUNC4(relation))
		return NULL;

	if (replident == REPLICA_IDENTITY_NOTHING)
		return NULL;

	if (replident == REPLICA_IDENTITY_FULL)
	{
		/*
		 * When logging the entire old tuple, it very well could contain
		 * toasted columns. If so, force them to be inlined.
		 */
		if (FUNC1(tp))
		{
			*copy = true;
			tp = FUNC11(tp, desc);
		}
		return tp;
	}

	/* if the key hasn't changed and we're only logging the key, we're done */
	if (!key_changed)
		return NULL;

	/* find out the replica identity columns */
	idattrs = FUNC3(relation,
										 INDEX_ATTR_BITMAP_IDENTITY_KEY);

	/*
	 * If there's no defined replica identity columns, treat as !key_changed.
	 * (This case should not be reachable from heap_update, since that should
	 * calculate key_changed accurately.  But heap_delete just passes constant
	 * true for key_changed, so we can hit this case in deletes.)
	 */
	if (FUNC6(idattrs))
		return NULL;

	/*
	 * Construct a new tuple containing only the replica identity columns,
	 * with nulls elsewhere.  While we're at it, assert that the replica
	 * identity columns aren't null.
	 */
	FUNC8(tp, desc, values, nulls);

	for (int i = 0; i < desc->natts; i++)
	{
		if (FUNC7(i + 1 - FirstLowInvalidHeapAttributeNumber,
						  idattrs))
			FUNC0(!nulls[i]);
		else
			nulls[i] = true;
	}

	key_tuple = FUNC9(desc, values, nulls);
	*copy = true;

	FUNC5(idattrs);

	/*
	 * If the tuple, which by here only contains indexed columns, still has
	 * toasted columns, force them to be inlined. This is somewhat unlikely
	 * since there's limits on the size of indexed columns, so we don't
	 * duplicate toast_flatten_tuple()s functionality in the above loop over
	 * the indexed columns, even if it would be more efficient.
	 */
	if (FUNC1(key_tuple))
	{
		HeapTuple	oldtup = key_tuple;

		key_tuple = FUNC11(oldtup, desc);
		FUNC10(oldtup);
	}

	return key_tuple;
}