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
struct TYPE_4__ {int /*<<< orphan*/  t_tid; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* IndexTuple ;
typedef  scalar_t__ BTPageOpaque ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTREE_NOVAC_VERSION ; 
 int /*<<< orphan*/  BTREE_VERSION ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC16(Relation rel, Relation heap, bool needheaptidspace,
					 Page page, IndexTuple newtup)
{
	Size		itemsz;
	BTPageOpaque opaque;

	itemsz = FUNC5(FUNC2(newtup));

	/* Double check item size against limit */
	if (itemsz <= FUNC0(page))
		return;

	/*
	 * Tuple is probably too large to fit on page, but it's possible that the
	 * index uses version 2 or version 3, or that page is an internal page, in
	 * which case a slightly higher limit applies.
	 */
	if (!needheaptidspace && itemsz <= FUNC1(page))
		return;

	/*
	 * Internal page insertions cannot fail here, because that would mean that
	 * an earlier leaf level insertion that should have failed didn't
	 */
	opaque = (BTPageOpaque) FUNC7(page);
	if (!FUNC6(opaque))
		FUNC9(ERROR, "cannot insert oversized tuple of size %zu on internal page of index \"%s\"",
			 itemsz, FUNC8(rel));

	FUNC10(ERROR,
			(FUNC11(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
			 FUNC14("index row size %zu exceeds btree version %u maximum %zu for index \"%s\"",
					itemsz,
					needheaptidspace ? BTREE_VERSION : BTREE_NOVAC_VERSION,
					needheaptidspace ? FUNC0(page) :
					FUNC1(page),
					FUNC8(rel)),
			 FUNC12("Index row references tuple (%u,%u) in relation \"%s\".",
					   FUNC3(&newtup->t_tid),
					   FUNC4(&newtup->t_tid),
					   FUNC8(heap)),
			 FUNC13("Values larger than 1/3 of a buffer page cannot be indexed.\n"
					 "Consider a function index of an MD5 hash of the value, "
					 "or use full text indexing."),
			 FUNC15(heap, FUNC8(rel))));
}