#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsm_segment ;
struct TYPE_5__ {scalar_t__ pid_using_dumpfile; int prewarm_start_idx; int prewarm_stop_idx; int /*<<< orphan*/  prewarmed_blocks; int /*<<< orphan*/  lock; int /*<<< orphan*/  block_info_handle; scalar_t__ database; } ;
struct TYPE_4__ {scalar_t__ database; unsigned int forknum; int /*<<< orphan*/  blocknum; int /*<<< orphan*/  filenode; int /*<<< orphan*/  tablespace; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ BlockInfoRecord ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOPREWARM_FILE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DSM_HANDLE_INVALID ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ InvalidPid ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  apw_compare_blockinfo ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__* apw_state ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned long,...) ; 
 scalar_t__ errno ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(void)
{
	FILE	   *file = NULL;
	int			num_elements,
				i;
	BlockInfoRecord *blkinfo;
	dsm_segment *seg;

	/*
	 * Skip the prewarm if the dump file is in use; otherwise, prevent any
	 * other process from writing it while we're using it.
	 */
	FUNC3(&apw_state->lock, LW_EXCLUSIVE);
	if (apw_state->pid_using_dumpfile == InvalidPid)
		apw_state->pid_using_dumpfile = MyProcPid;
	else
	{
		FUNC4(&apw_state->lock);
		FUNC10(LOG,
				(FUNC12("skipping prewarm because block dump file is being written by PID %lu",
						(unsigned long) apw_state->pid_using_dumpfile)));
		return;
	}
	FUNC4(&apw_state->lock);

	/*
	 * Open the block dump file.  Exit quietly if it doesn't exist, but report
	 * any other error.
	 */
	file = FUNC0(AUTOPREWARM_FILE, "r");
	if (!file)
	{
		if (errno == ENOENT)
		{
			FUNC3(&apw_state->lock, LW_EXCLUSIVE);
			apw_state->pid_using_dumpfile = InvalidPid;
			FUNC4(&apw_state->lock);
			return;				/* No file to load. */
		}
		FUNC10(ERROR,
				(FUNC11(),
				 FUNC12("could not read file \"%s\": %m",
						AUTOPREWARM_FILE)));
	}

	/* First line of the file is a record count. */
	if (FUNC13(file, "<<%d>>\n", &num_elements) != 1)
		FUNC10(ERROR,
				(FUNC11(),
				 FUNC12("could not read from file \"%s\": %m",
						AUTOPREWARM_FILE)));

	/* Allocate a dynamic shared memory segment to store the record data. */
	seg = FUNC6(sizeof(BlockInfoRecord) * num_elements, 0);
	blkinfo = (BlockInfoRecord *) FUNC8(seg);

	/* Read records, one per line. */
	for (i = 0; i < num_elements; i++)
	{
		unsigned	forknum;

		if (FUNC13(file, "%u,%u,%u,%u,%u\n", &blkinfo[i].database,
				   &blkinfo[i].tablespace, &blkinfo[i].filenode,
				   &forknum, &blkinfo[i].blocknum) != 5)
			FUNC10(ERROR,
					(FUNC12("autoprewarm block dump file is corrupted at line %d",
							i + 1)));
		blkinfo[i].forknum = forknum;
	}

	FUNC2(file);

	/* Sort the blocks to be loaded. */
	FUNC15(blkinfo, num_elements, sizeof(BlockInfoRecord),
			 apw_compare_blockinfo);

	/* Populate shared memory state. */
	apw_state->block_info_handle = FUNC9(seg);
	apw_state->prewarm_start_idx = apw_state->prewarm_stop_idx = 0;
	apw_state->prewarmed_blocks = 0;

	/* Get the info position of the first block of the next database. */
	while (apw_state->prewarm_start_idx < num_elements)
	{
		int			j = apw_state->prewarm_start_idx;
		Oid			current_db = blkinfo[j].database;

		/*
		 * Advance the prewarm_stop_idx to the first BlockInfoRecord that does
		 * not belong to this database.
		 */
		j++;
		while (j < num_elements)
		{
			if (current_db != blkinfo[j].database)
			{
				/*
				 * Combine BlockInfoRecords for global objects with those of
				 * the database.
				 */
				if (current_db != InvalidOid)
					break;
				current_db = blkinfo[j].database;
			}

			j++;
		}

		/*
		 * If we reach this point with current_db == InvalidOid, then only
		 * BlockInfoRecords belonging to global objects exist.  We can't
		 * prewarm without a database connection, so just bail out.
		 */
		if (current_db == InvalidOid)
			break;

		/* Configure stop point and database for next per-database worker. */
		apw_state->prewarm_stop_idx = j;
		apw_state->database = current_db;
		FUNC1(apw_state->prewarm_start_idx < apw_state->prewarm_stop_idx);

		/* If we've run out of free buffers, don't launch another worker. */
		if (!FUNC14())
			break;

		/*
		 * Start a per-database worker to load blocks for this database; this
		 * function will return once the per-database worker exits.
		 */
		FUNC5();

		/* Prepare for next database. */
		apw_state->prewarm_start_idx = apw_state->prewarm_stop_idx;
	}

	/* Clean up. */
	FUNC7(seg);
	FUNC3(&apw_state->lock, LW_EXCLUSIVE);
	apw_state->block_info_handle = DSM_HANDLE_INVALID;
	apw_state->pid_using_dumpfile = InvalidPid;
	FUNC4(&apw_state->lock);

	/* Report our success. */
	FUNC10(LOG,
			(FUNC12("autoprewarm successfully prewarmed %d of %d previously-loaded blocks",
					apw_state->prewarmed_blocks, num_elements)));
}