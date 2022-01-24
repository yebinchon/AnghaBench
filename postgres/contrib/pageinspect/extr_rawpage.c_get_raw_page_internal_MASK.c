#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ RELKIND_COMPOSITE_TYPE ; 
 scalar_t__ RELKIND_FOREIGN_TABLE ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_VIEW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bytea *
FUNC19(text *relname, ForkNumber forknum, BlockNumber blkno)
{
	bytea	   *raw_page;
	RangeVar   *relrv;
	Relation	rel;
	char	   *raw_page_data;
	Buffer		buf;

	if (!FUNC17())
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 (FUNC11("must be superuser to use raw page functions"))));

	relrv = FUNC12(FUNC18(relname));
	rel = FUNC16(relrv, AccessShareLock);

	/* Check that this relation has storage */
	if (rel->rd_rel->relkind == RELKIND_VIEW)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC11("cannot get raw page from view \"%s\"",
						FUNC5(rel))));
	if (rel->rd_rel->relkind == RELKIND_COMPOSITE_TYPE)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC11("cannot get raw page from composite type \"%s\"",
						FUNC5(rel))));
	if (rel->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC11("cannot get raw page from foreign table \"%s\"",
						FUNC5(rel))));
	if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC11("cannot get raw page from partitioned table \"%s\"",
						FUNC5(rel))));
	if (rel->rd_rel->relkind == RELKIND_PARTITIONED_INDEX)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC11("cannot get raw page from partitioned index \"%s\"",
						FUNC5(rel))));

	/*
	 * Reject attempts to read non-local temporary relations; we would be
	 * likely to get wrong data since we have no visibility into the owning
	 * session's local buffers.
	 */
	if (FUNC2(rel))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC11("cannot access temporary tables of other sessions")));

	if (blkno >= FUNC4(rel, forknum))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC11("block number %u is out of range for relation \"%s\"",
						blkno, FUNC5(rel))));

	/* Initialize buffer to copy to */
	raw_page = (bytea *) FUNC14(BLCKSZ + VARHDRSZ);
	FUNC7(raw_page, BLCKSZ + VARHDRSZ);
	raw_page_data = FUNC8(raw_page);

	/* Take a verbatim copy of the page */

	buf = FUNC3(rel, forknum, blkno, RBM_NORMAL, NULL);
	FUNC1(buf, BUFFER_LOCK_SHARE);

	FUNC13(raw_page_data, FUNC0(buf), BLCKSZ);

	FUNC1(buf, BUFFER_LOCK_UNLOCK);
	FUNC6(buf);

	FUNC15(rel, AccessShareLock);

	return raw_page;
}