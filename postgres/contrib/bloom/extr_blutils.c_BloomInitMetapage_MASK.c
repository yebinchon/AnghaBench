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
typedef  int /*<<< orphan*/  GenericXLogState ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLOOM_METAPAGE_BLKNO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC_XLOG_FULL_IMAGE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(Relation index)
{
	Buffer		metaBuffer;
	Page		metaPage;
	GenericXLogState *state;

	/*
	 * Make a new page; since it is first page it should be associated with
	 * block number 0 (BLOOM_METAPAGE_BLKNO).
	 */
	metaBuffer = FUNC2(index);
	FUNC0(FUNC3(metaBuffer) == BLOOM_METAPAGE_BLKNO);

	/* Initialize contents of meta page */
	state = FUNC6(index);
	metaPage = FUNC5(state, metaBuffer,
										 GENERIC_XLOG_FULL_IMAGE);
	FUNC1(index, metaPage);
	FUNC4(state);

	FUNC7(metaBuffer);
}