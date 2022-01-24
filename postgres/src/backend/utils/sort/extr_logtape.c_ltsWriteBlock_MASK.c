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
typedef  int /*<<< orphan*/  zerobuf ;
struct TYPE_5__ {long nBlocksWritten; int /*<<< orphan*/  pfile; } ;
struct TYPE_4__ {void* data; } ;
typedef  TYPE_1__ PGAlignedBlock ;
typedef  TYPE_2__ LogicalTapeSet ;

/* Variables and functions */
 scalar_t__ BLCKSZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,long) ; 

__attribute__((used)) static void
FUNC6(LogicalTapeSet *lts, long blocknum, void *buffer)
{
	/*
	 * BufFile does not support "holes", so if we're about to write a block
	 * that's past the current end of file, fill the space between the current
	 * end of file and the target block with zeros.
	 *
	 * This should happen rarely, otherwise you are not writing very
	 * sequentially.  In current use, this only happens when the sort ends
	 * writing a run, and switches to another tape.  The last block of the
	 * previous tape isn't flushed to disk until the end of the sort, so you
	 * get one-block hole, where the last block of the previous tape will
	 * later go.
	 *
	 * Note that BufFile concatenation can leave "holes" in BufFile between
	 * worker-owned block ranges.  These are tracked for reporting purposes
	 * only.  We never read from nor write to these hole blocks, and so they
	 * are not considered here.
	 */
	while (blocknum > lts->nBlocksWritten)
	{
		PGAlignedBlock zerobuf;

		FUNC2(zerobuf.data, 0, sizeof(zerobuf));

		FUNC6(lts, lts->nBlocksWritten, zerobuf.data);
	}

	/* Write the requested block */
	if (FUNC0(lts->pfile, blocknum) != 0 ||
		FUNC1(lts->pfile, buffer, BLCKSZ) != BLCKSZ)
		FUNC3(ERROR,
				(FUNC4(),
				 FUNC5("could not write block %ld of temporary file: %m",
						blocknum)));

	/* Update nBlocksWritten, if we extended the file */
	if (blocknum == lts->nBlocksWritten)
		lts->nBlocksWritten++;
}