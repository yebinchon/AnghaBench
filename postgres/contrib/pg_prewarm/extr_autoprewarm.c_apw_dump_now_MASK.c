#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  scalar_t__ pid_t ;
struct TYPE_14__ {scalar_t__ pid_using_dumpfile; int /*<<< orphan*/  lock; } ;
struct TYPE_13__ {int database; int tablespace; int filenode; int blocknum; scalar_t__ forknum; } ;
struct TYPE_10__ {int dbNode; int spcNode; int relNode; } ;
struct TYPE_11__ {int blockNum; scalar_t__ forkNum; TYPE_1__ rnode; } ;
struct TYPE_12__ {TYPE_2__ tag; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_3__ BufferDesc ;
typedef  TYPE_4__ BlockInfoRecord ;

/* Variables and functions */
 char* AUTOPREWARM_FILE ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int BM_PERMANENT ; 
 int BM_TAG_VALID ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int) ; 
 scalar_t__ InvalidPid ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int FUNC6 (TYPE_3__*) ; 
 int MAXPGPATH ; 
 scalar_t__ MyProcPid ; 
 int NBuffers ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 TYPE_6__* apw_state ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int errno ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,int,...) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static int
FUNC17(bool is_bgworker, bool dump_unlogged)
{
	int			num_blocks;
	int			i;
	int			ret;
	BlockInfoRecord *block_info_array;
	BufferDesc *bufHdr;
	FILE	   *file;
	char		transient_dump_file_path[MAXPGPATH];
	pid_t		pid;

	FUNC4(&apw_state->lock, LW_EXCLUSIVE);
	pid = apw_state->pid_using_dumpfile;
	if (apw_state->pid_using_dumpfile == InvalidPid)
		apw_state->pid_using_dumpfile = MyProcPid;
	FUNC5(&apw_state->lock);

	if (pid != InvalidPid)
	{
		if (!is_bgworker)
			FUNC9(ERROR,
					(FUNC11("could not perform block dump because dump file is being used by PID %lu",
							(unsigned long) apw_state->pid_using_dumpfile)));

		FUNC9(LOG,
				(FUNC11("skipping block dump because it is already being performed by PID %lu",
						(unsigned long) apw_state->pid_using_dumpfile)));
		return 0;
	}

	block_info_array =
		(BlockInfoRecord *) FUNC13(sizeof(BlockInfoRecord) * NBuffers);

	for (num_blocks = 0, i = 0; i < NBuffers; i++)
	{
		uint32		buf_state;

		FUNC1();

		bufHdr = FUNC3(i);

		/* Lock each buffer header before inspecting. */
		buf_state = FUNC6(bufHdr);

		/*
		 * Unlogged tables will be automatically truncated after a crash or
		 * unclean shutdown. In such cases we need not prewarm them. Dump them
		 * only if requested by caller.
		 */
		if (buf_state & BM_TAG_VALID &&
			((buf_state & BM_PERMANENT) || dump_unlogged))
		{
			block_info_array[num_blocks].database = bufHdr->tag.rnode.dbNode;
			block_info_array[num_blocks].tablespace = bufHdr->tag.rnode.spcNode;
			block_info_array[num_blocks].filenode = bufHdr->tag.rnode.relNode;
			block_info_array[num_blocks].forknum = bufHdr->tag.forkNum;
			block_info_array[num_blocks].blocknum = bufHdr->tag.blockNum;
			++num_blocks;
		}

		FUNC7(bufHdr, buf_state);
	}

	FUNC15(transient_dump_file_path, MAXPGPATH, "%s.tmp", AUTOPREWARM_FILE);
	file = FUNC0(transient_dump_file_path, "w");
	if (!file)
		FUNC9(ERROR,
				(FUNC10(),
				 FUNC11("could not open file \"%s\": %m",
						transient_dump_file_path)));

	ret = FUNC12(file, "<<%d>>\n", num_blocks);
	if (ret < 0)
	{
		int			save_errno = errno;

		FUNC2(file);
		FUNC16(transient_dump_file_path);
		errno = save_errno;
		FUNC9(ERROR,
				(FUNC10(),
				 FUNC11("could not write to file \"%s\": %m",
						transient_dump_file_path)));
	}

	for (i = 0; i < num_blocks; i++)
	{
		FUNC1();

		ret = FUNC12(file, "%u,%u,%u,%u,%u\n",
					  block_info_array[i].database,
					  block_info_array[i].tablespace,
					  block_info_array[i].filenode,
					  (uint32) block_info_array[i].forknum,
					  block_info_array[i].blocknum);
		if (ret < 0)
		{
			int			save_errno = errno;

			FUNC2(file);
			FUNC16(transient_dump_file_path);
			errno = save_errno;
			FUNC9(ERROR,
					(FUNC10(),
					 FUNC11("could not write to file \"%s\": %m",
							transient_dump_file_path)));
		}
	}

	FUNC14(block_info_array);

	/*
	 * Rename transient_dump_file_path to AUTOPREWARM_FILE to make things
	 * permanent.
	 */
	ret = FUNC2(file);
	if (ret != 0)
	{
		int			save_errno = errno;

		FUNC16(transient_dump_file_path);
		errno = save_errno;
		FUNC9(ERROR,
				(FUNC10(),
				 FUNC11("could not close file \"%s\": %m",
						transient_dump_file_path)));
	}

	(void) FUNC8(transient_dump_file_path, AUTOPREWARM_FILE, ERROR);
	apw_state->pid_using_dumpfile = InvalidPid;

	FUNC9(DEBUG1,
			(FUNC11("wrote block details for %d blocks", num_blocks)));
	return num_blocks;
}