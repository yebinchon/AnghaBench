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
struct TYPE_4__ {int /*<<< orphan*/  free_space; } ;
typedef  TYPE_1__ pgstattuple_type ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  BufferAccessStrategy ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  scalar_t__ BTPageOpaque ;

/* Variables and functions */
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  BT_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(pgstattuple_type *stat, Relation rel, BlockNumber blkno,
				  BufferAccessStrategy bstrategy)
{
	Buffer		buf;
	Page		page;

	buf = FUNC8(rel, MAIN_FORKNUM, blkno, RBM_NORMAL, bstrategy);
	FUNC1(buf, BT_READ);
	page = FUNC0(buf);

	/* Page is valid, see what to do with it */
	if (FUNC7(page))
	{
		/* fully empty page */
		stat->free_space += BLCKSZ;
	}
	else
	{
		BTPageOpaque opaque;

		opaque = (BTPageOpaque) FUNC6(page);
		if (FUNC3(opaque))
		{
			/* recyclable page */
			stat->free_space += BLCKSZ;
		}
		else if (FUNC4(opaque))
		{
			FUNC10(stat, page, FUNC2(opaque),
							  FUNC5(page));
		}
		else
		{
			/* root or node */
		}
	}

	FUNC9(rel, buf);
}