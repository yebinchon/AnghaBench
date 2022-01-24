#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  free_percent; int /*<<< orphan*/  free_space; int /*<<< orphan*/  dead_tuple_percent; int /*<<< orphan*/  dead_tuple_len; int /*<<< orphan*/  dead_tuple_count; int /*<<< orphan*/  tuple_percent; int /*<<< orphan*/  tuple_len; int /*<<< orphan*/  tuple_count; int /*<<< orphan*/  scanned_percent; int /*<<< orphan*/  table_len; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ output_type ;
typedef  int /*<<< orphan*/  nulls ;
typedef  TYPE_3__* TupleDesc ;
struct TYPE_16__ {TYPE_1__* rd_rel; } ;
struct TYPE_15__ {int natts; } ;
struct TYPE_13__ {scalar_t__ relkind; scalar_t__ relam; } ;
typedef  TYPE_4__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HEAP_TABLE_AM_OID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int NUM_OUTPUT_COLUMNS ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ TYPEFUNC_COMPOSITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_2__*) ; 

Datum
FUNC15(Oid relid, FunctionCallInfo fcinfo)
{
	Relation	rel;
	output_type stat = {0};
	TupleDesc	tupdesc;
	bool		nulls[NUM_OUTPUT_COLUMNS];
	Datum		values[NUM_OUTPUT_COLUMNS];
	HeapTuple	ret;
	int			i = 0;

	if (FUNC9(fcinfo, NULL, &tupdesc) != TYPEFUNC_COMPOSITE)
		FUNC5(ERROR, "return type must be a row type");

	if (tupdesc->natts != NUM_OUTPUT_COLUMNS)
		FUNC5(ERROR, "incorrect number of output arguments");

	rel = FUNC13(relid, AccessShareLock);

	/*
	 * Reject attempts to read non-local temporary relations; we would be
	 * likely to get wrong data since we have no visibility into the owning
	 * session's local buffers.
	 */
	if (FUNC3(rel))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC8("cannot access temporary tables of other sessions")));

	/*
	 * We support only ordinary relations and materialised views, because we
	 * depend on the visibility map and free space map for our estimates about
	 * unscanned pages.
	 */
	if (!(rel->rd_rel->relkind == RELKIND_RELATION ||
		  rel->rd_rel->relkind == RELKIND_MATVIEW))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC8("\"%s\" is not a table or materialized view",
						FUNC4(rel))));

	if (rel->rd_rel->relam != HEAP_TABLE_AM_OID)
		FUNC6(ERROR, (FUNC7(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC8("only heap AM is supported")));

	FUNC14(rel, &stat);

	FUNC12(rel, AccessShareLock);

	FUNC11(nulls, 0, sizeof(nulls));

	values[i++] = FUNC2(stat.table_len);
	values[i++] = FUNC0(stat.scanned_percent);
	values[i++] = FUNC2(stat.tuple_count);
	values[i++] = FUNC2(stat.tuple_len);
	values[i++] = FUNC0(stat.tuple_percent);
	values[i++] = FUNC2(stat.dead_tuple_count);
	values[i++] = FUNC2(stat.dead_tuple_len);
	values[i++] = FUNC0(stat.dead_tuple_percent);
	values[i++] = FUNC2(stat.free_space);
	values[i++] = FUNC0(stat.free_percent);

	ret = FUNC10(tupdesc, values, nulls);
	return FUNC1(ret);
}