#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int off_t ;
struct TYPE_15__ {int /*<<< orphan*/  mdfd_vfd; } ;
struct TYPE_12__ {int /*<<< orphan*/  relNode; int /*<<< orphan*/  dbNode; int /*<<< orphan*/  spcNode; } ;
struct TYPE_13__ {int /*<<< orphan*/  backend; TYPE_1__ node; } ;
struct TYPE_14__ {TYPE_2__ smgr_rnode; } ;
typedef  TYPE_3__* SMgrRelation ;
typedef  TYPE_4__ MdfdVec ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_DISK_FULL ; 
 int /*<<< orphan*/  ERROR ; 
 int EXTENSION_CREATE_RECOVERY ; 
 int EXTENSION_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int RELSEG_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_DATA_FILE_WRITE ; 
 TYPE_4__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ,...) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*) ; 

void
FUNC14(SMgrRelation reln, ForkNumber forknum, BlockNumber blocknum,
		char *buffer, bool skipFsync)
{
	off_t		seekpos;
	int			nbytes;
	MdfdVec    *v;

	/* This assert is too expensive to have on normally ... */
#ifdef CHECK_WRITE_VS_EXTEND
	Assert(blocknum < mdnblocks(reln, forknum));
#endif

	FUNC5(forknum, blocknum,
										 reln->smgr_rnode.node.spcNode,
										 reln->smgr_rnode.node.dbNode,
										 reln->smgr_rnode.node.relNode,
										 reln->smgr_rnode.backend);

	v = FUNC6(reln, forknum, blocknum, skipFsync,
					 EXTENSION_FAIL | EXTENSION_CREATE_RECOVERY);

	seekpos = (off_t) BLCKSZ * (blocknum % ((BlockNumber) RELSEG_SIZE));

	FUNC0(seekpos < (off_t) BLCKSZ * RELSEG_SIZE);

	nbytes = FUNC2(v->mdfd_vfd, buffer, BLCKSZ, seekpos, WAIT_EVENT_DATA_FILE_WRITE);

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
					 FUNC11("could not write block %u in file \"%s\": %m",
							blocknum, FUNC1(v->mdfd_vfd))));
		/* short write: complain appropriately */
		FUNC7(ERROR,
				(FUNC8(ERRCODE_DISK_FULL),
				 FUNC11("could not write block %u in file \"%s\": wrote only %d of %d bytes",
						blocknum,
						FUNC1(v->mdfd_vfd),
						nbytes, BLCKSZ),
				 FUNC10("Check free disk space.")));
	}

	if (!skipFsync && !FUNC3(reln))
		FUNC13(reln, forknum, v);
}