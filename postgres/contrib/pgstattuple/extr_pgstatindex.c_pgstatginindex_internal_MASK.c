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
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_5__ {int /*<<< orphan*/  pending_tuples; int /*<<< orphan*/  pending_pages; int /*<<< orphan*/  version; } ;
struct TYPE_4__ {int /*<<< orphan*/  nPendingHeapTuples; int /*<<< orphan*/  nPendingPages; int /*<<< orphan*/  ginVersion; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__ GinMetaPageData ;
typedef  TYPE_2__ GinIndexStat ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GIN_METAPAGE_BLKNO ; 
 int /*<<< orphan*/  GIN_SHARE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPEFUNC_COMPOSITE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Datum
FUNC21(Oid relid, FunctionCallInfo fcinfo)
{
	Relation	rel;
	Buffer		buffer;
	Page		page;
	GinMetaPageData *metadata;
	GinIndexStat stats;
	HeapTuple	tuple;
	TupleDesc	tupleDesc;
	Datum		values[3];
	bool		nulls[3] = {false, false, false};
	Datum		result;

	rel = FUNC20(relid, AccessShareLock);

	if (!FUNC4(rel) || !FUNC3(rel))
		FUNC14(ERROR,
				(FUNC15(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC16("relation \"%s\" is not a GIN index",
						FUNC10(rel))));

	/*
	 * Reject attempts to read non-local temporary relations; we would be
	 * likely to get wrong data since we have no visibility into the owning
	 * session's local buffers.
	 */
	if (FUNC8(rel))
		FUNC14(ERROR,
				(FUNC15(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC16("cannot access temporary indexes of other sessions")));

	/*
	 * Read metapage
	 */
	buffer = FUNC9(rel, GIN_METAPAGE_BLKNO);
	FUNC7(buffer, GIN_SHARE);
	page = FUNC0(buffer);
	metadata = FUNC1(page);

	stats.version = metadata->ginVersion;
	stats.pending_pages = metadata->nPendingPages;
	stats.pending_tuples = metadata->nPendingHeapTuples;

	FUNC12(buffer);
	FUNC19(rel, AccessShareLock);

	/*
	 * Build a tuple descriptor for our result type
	 */
	if (FUNC17(fcinfo, NULL, &tupleDesc) != TYPEFUNC_COMPOSITE)
		FUNC13(ERROR, "return type must be a row type");

	values[0] = FUNC5(stats.version);
	values[1] = FUNC11(stats.pending_pages);
	values[2] = FUNC6(stats.pending_tuples);

	/*
	 * Build and return the tuple
	 */
	tuple = FUNC18(tupleDesc, values, nulls);
	result = FUNC2(tuple);

	return result;
}