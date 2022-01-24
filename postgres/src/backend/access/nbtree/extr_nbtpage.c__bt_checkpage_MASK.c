#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BTPageOpaqueData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(Relation rel, Buffer buf)
{
	Page		page = FUNC1(buf);

	/*
	 * ReadBuffer verifies that every newly-read page passes
	 * PageHeaderIsValid, which means it either contains a reasonably sane
	 * page header or is all-zero.  We have to defend against the all-zero
	 * case, however.
	 */
	if (FUNC4(page))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_INDEX_CORRUPTED),
				 FUNC9("index \"%s\" contains unexpected zero page at block %u",
						FUNC5(rel),
						FUNC0(buf)),
				 FUNC8("Please REINDEX it.")));

	/*
	 * Additionally check that the special area looks sane.
	 */
	if (FUNC3(page) != FUNC2(sizeof(BTPageOpaqueData)))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_INDEX_CORRUPTED),
				 FUNC9("index \"%s\" contains corrupted page at block %u",
						FUNC5(rel),
						FUNC0(buf)),
				 FUNC8("Please REINDEX it.")));
}