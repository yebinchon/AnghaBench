#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int off_t ;
struct TYPE_11__ {int /*<<< orphan*/  mdfd_vfd; } ;
struct TYPE_8__ {int /*<<< orphan*/  relNode; int /*<<< orphan*/  dbNode; int /*<<< orphan*/  spcNode; } ;
struct TYPE_9__ {int /*<<< orphan*/  backend; TYPE_1__ node; } ;
struct TYPE_10__ {TYPE_2__ smgr_rnode; } ;
typedef  TYPE_3__* SMgrRelation ;
typedef  TYPE_4__ MdfdVec ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int EXTENSION_CREATE_RECOVERY ; 
 int EXTENSION_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ InRecovery ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int RELSEG_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_DATA_FILE_READ ; 
 TYPE_4__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ zero_damaged_pages ; 

void
FUNC11(SMgrRelation reln, ForkNumber forknum, BlockNumber blocknum,
	   char *buffer)
{
	off_t		seekpos;
	int			nbytes;
	MdfdVec    *v;

	FUNC5(forknum, blocknum,
										reln->smgr_rnode.node.spcNode,
										reln->smgr_rnode.node.dbNode,
										reln->smgr_rnode.node.relNode,
										reln->smgr_rnode.backend);

	v = FUNC6(reln, forknum, blocknum, false,
					 EXTENSION_FAIL | EXTENSION_CREATE_RECOVERY);

	seekpos = (off_t) BLCKSZ * (blocknum % ((BlockNumber) RELSEG_SIZE));

	FUNC0(seekpos < (off_t) BLCKSZ * RELSEG_SIZE);

	nbytes = FUNC2(v->mdfd_vfd, buffer, BLCKSZ, seekpos, WAIT_EVENT_DATA_FILE_READ);

	FUNC4(forknum, blocknum,
									   reln->smgr_rnode.node.spcNode,
									   reln->smgr_rnode.node.dbNode,
									   reln->smgr_rnode.node.relNode,
									   reln->smgr_rnode.backend,
									   nbytes,
									   BLCKSZ);

	if (nbytes != BLCKSZ)
	{
		if (nbytes < 0)
			FUNC7(ERROR,
					(FUNC9(),
					 FUNC10("could not read block %u in file \"%s\": %m",
							blocknum, FUNC1(v->mdfd_vfd))));

		/*
		 * Short read: we are at or past EOF, or we read a partial block at
		 * EOF.  Normally this is an error; upper levels should never try to
		 * read a nonexistent block.  However, if zero_damaged_pages is ON or
		 * we are InRecovery, we should instead return zeroes without
		 * complaining.  This allows, for example, the case of trying to
		 * update a block that was later truncated away.
		 */
		if (zero_damaged_pages || InRecovery)
			FUNC3(buffer, 0, BLCKSZ);
		else
			FUNC7(ERROR,
					(FUNC8(ERRCODE_DATA_CORRUPTED),
					 FUNC10("could not read block %u in file \"%s\": read only %d of %d bytes",
							blocknum, FUNC1(v->mdfd_vfd),
							nbytes, BLCKSZ)));
	}
}