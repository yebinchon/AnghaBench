#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_19__ {scalar_t__ t_len; int /*<<< orphan*/  t_tableOid; TYPE_11__* t_data; } ;
struct TYPE_18__ {TYPE_1__* rd_rel; } ;
struct TYPE_17__ {scalar_t__ relkind; } ;
struct TYPE_16__ {int /*<<< orphan*/  t_infomask; int /*<<< orphan*/  t_infomask2; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* HeapTuple ;
typedef  int /*<<< orphan*/  CommandId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TRANSACTION_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HEAP2_XACT_MASK ; 
 int HEAP_INSERT_FROZEN ; 
 int /*<<< orphan*/  HEAP_XACT_MASK ; 
 int /*<<< orphan*/  HEAP_XMAX_INVALID ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ TOAST_TUPLE_THRESHOLD ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_3__* FUNC11 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HeapTuple
FUNC12(Relation relation, HeapTuple tup, TransactionId xid,
					CommandId cid, int options)
{
	/*
	 * Parallel operations are required to be strictly read-only in a parallel
	 * worker.  Parallel inserts are not safe even in the leader in the
	 * general case, because group locking means that heavyweight locks for
	 * relation extension or GIN page locks will not conflict between members
	 * of a lock group, but we don't prohibit that case here because there are
	 * useful special cases that we can safely allow, such as CREATE TABLE AS.
	 */
	if (FUNC6())
		FUNC8(ERROR,
				(FUNC9(ERRCODE_INVALID_TRANSACTION_STATE),
				 FUNC10("cannot insert tuples in a parallel worker")));

	tup->t_data->t_infomask &= ~(HEAP_XACT_MASK);
	tup->t_data->t_infomask2 &= ~(HEAP2_XACT_MASK);
	tup->t_data->t_infomask |= HEAP_XMAX_INVALID;
	FUNC4(tup->t_data, xid);
	if (options & HEAP_INSERT_FROZEN)
		FUNC5(tup->t_data);

	FUNC2(tup->t_data, cid);
	FUNC3(tup->t_data, 0); /* for cleanliness */
	tup->t_tableOid = FUNC7(relation);

	/*
	 * If the new tuple is too big for storage or contains already toasted
	 * out-of-line attributes from some other relation, invoke the toaster.
	 */
	if (relation->rd_rel->relkind != RELKIND_RELATION &&
		relation->rd_rel->relkind != RELKIND_MATVIEW)
	{
		/* toast table entries should never be recursively toasted */
		FUNC0(!FUNC1(tup));
		return tup;
	}
	else if (FUNC1(tup) || tup->t_len > TOAST_TUPLE_THRESHOLD)
		return FUNC11(relation, tup, NULL, options);
	else
		return tup;
}