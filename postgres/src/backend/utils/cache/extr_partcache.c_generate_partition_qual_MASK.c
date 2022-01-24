#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int rd_partcheckvalid; int /*<<< orphan*/ * rd_partcheck; int /*<<< orphan*/ * rd_partcheckcxt; TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relispartition; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Anum_pg_class_relpartbound ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  NoLock ; 
 int PartitionBoundSpec ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int bound ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int,TYPE_2__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC22(Relation rel)
{
	HeapTuple	tuple;
	MemoryContext oldcxt;
	Datum		boundDatum;
	bool		isnull;
	List	   *my_qual = NIL,
			   *result = NIL;
	Relation	parent;
	bool		found_whole_row;

	/* Guard against stack overflow due to overly deep partition tree */
	FUNC12();

	/* If we already cached the result, just return a copy */
	if (rel->rd_partcheckvalid)
		return FUNC13(rel->rd_partcheck);

	/* Grab at least an AccessShareLock on the parent table */
	parent = FUNC20(FUNC15(FUNC6(rel)),
						   AccessShareLock);

	/* Get pg_class.relpartbound */
	tuple = FUNC8(RELOID, FUNC6(rel));
	if (!FUNC2(tuple))
		FUNC14(ERROR, "cache lookup failed for relation %u",
			 FUNC6(rel));

	boundDatum = FUNC9(RELOID, tuple,
								 Anum_pg_class_relpartbound,
								 &isnull);
	if (!isnull)
	{
		PartitionBoundSpec *bound;

		bound = FUNC11(PartitionBoundSpec,
						 FUNC21(FUNC10(boundDatum)));

		my_qual = FUNC16(rel, parent, bound);
	}

	FUNC7(tuple);

	/* Add the parent's quals to the list (if any) */
	if (parent->rd_rel->relispartition)
		result = FUNC17(FUNC22(parent), my_qual);
	else
		result = my_qual;

	/*
	 * Change Vars to have partition's attnos instead of the parent's. We do
	 * this after we concatenate the parent's quals, because we want every Var
	 * in it to bear this relation's attnos. It's safe to assume varno = 1
	 * here.
	 */
	result = FUNC18(result, 1, rel, parent,
									 &found_whole_row);
	/* There can never be a whole-row reference here */
	if (found_whole_row)
		FUNC14(ERROR, "unexpected whole-row reference found in partition key");

	/* Assert that we're not leaking any old data during assignments below */
	FUNC1(rel->rd_partcheckcxt == NULL);
	FUNC1(rel->rd_partcheck == NIL);

	/*
	 * Save a copy in the relcache.  The order of these operations is fairly
	 * critical to avoid memory leaks and ensure that we don't leave a corrupt
	 * relcache entry if we fail partway through copyObject.
	 *
	 * If, as is definitely possible, the partcheck list is NIL, then we do
	 * not need to make a context to hold it.
	 */
	if (result != NIL)
	{
		rel->rd_partcheckcxt = FUNC0(CacheMemoryContext,
													 "partition constraint",
													 ALLOCSET_SMALL_SIZES);
		FUNC3(rel->rd_partcheckcxt,
										  FUNC5(rel));
		oldcxt = FUNC4(rel->rd_partcheckcxt);
		rel->rd_partcheck = FUNC13(result);
		FUNC4(oldcxt);
	}
	else
		rel->rd_partcheck = NIL;
	rel->rd_partcheckvalid = true;

	/* Keep the parent locked until commit */
	FUNC19(parent, NoLock);

	/* Return the working copy to the caller */
	return result;
}