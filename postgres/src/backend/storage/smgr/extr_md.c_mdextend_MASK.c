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
typedef  scalar_t__ off_t ;
struct TYPE_13__ {int /*<<< orphan*/  mdfd_vfd; } ;
struct TYPE_12__ {int /*<<< orphan*/  smgr_rnode; } ;
typedef  TYPE_1__* SMgrRelation ;
typedef  TYPE_2__ MdfdVec ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_DISK_FULL ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXTENSION_CREATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ RELSEG_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  WAIT_EVENT_DATA_FILE_EXTEND ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(SMgrRelation reln, ForkNumber forknum, BlockNumber blocknum,
		 char *buffer, bool skipFsync)
{
	off_t		seekpos;
	int			nbytes;
	MdfdVec    *v;

	/* This assert is too expensive to have on normally ... */
#ifdef CHECK_WRITE_VS_EXTEND
	Assert(blocknum >= mdnblocks(reln, forknum));
#endif

	/*
	 * If a relation manages to grow to 2^32-1 blocks, refuse to extend it any
	 * more --- we mustn't create a block whose number actually is
	 * InvalidBlockNumber.
	 */
	if (blocknum == InvalidBlockNumber)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC10("cannot extend file \"%s\" beyond %u blocks",
						FUNC13(reln->smgr_rnode, forknum),
						InvalidBlockNumber)));

	v = FUNC4(reln, forknum, blocknum, skipFsync, EXTENSION_CREATE);

	seekpos = (off_t) BLCKSZ * (blocknum % ((BlockNumber) RELSEG_SIZE));

	FUNC0(seekpos < (off_t) BLCKSZ * RELSEG_SIZE);

	if ((nbytes = FUNC2(v->mdfd_vfd, buffer, BLCKSZ, seekpos, WAIT_EVENT_DATA_FILE_EXTEND)) != BLCKSZ)
	{
		if (nbytes < 0)
			FUNC6(ERROR,
					(FUNC8(),
					 FUNC10("could not extend file \"%s\": %m",
							FUNC1(v->mdfd_vfd)),
					 FUNC9("Check free disk space.")));
		/* short write: complain appropriately */
		FUNC6(ERROR,
				(FUNC7(ERRCODE_DISK_FULL),
				 FUNC10("could not extend file \"%s\": wrote only %d of %d bytes at block %u",
						FUNC1(v->mdfd_vfd),
						nbytes, BLCKSZ, blocknum),
				 FUNC9("Check free disk space.")));
	}

	if (!skipFsync && !FUNC3(reln))
		FUNC12(reln, forknum, v);

	FUNC0(FUNC5(reln, forknum, v) <= ((BlockNumber) RELSEG_SIZE));
}