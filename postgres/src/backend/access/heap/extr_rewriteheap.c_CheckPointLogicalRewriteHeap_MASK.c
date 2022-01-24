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
typedef  int uint64 ;
typedef  int uint32 ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  path ;
typedef  scalar_t__ XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int /*<<< orphan*/  LOGICAL_REWRITE_FORMAT ; 
 int /*<<< orphan*/  MAXPGPATH ; 
 int O_RDWR ; 
 int FUNC4 (char*,int) ; 
 int PG_BINARY ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_LOGICAL_REWRITE_CHECKPOINT_SYNC ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,struct stat*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,char*) ; 
 int FUNC18 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 scalar_t__ FUNC20 (char*,char*,int) ; 
 scalar_t__ FUNC21 (char*) ; 

void
FUNC22(void)
{
	XLogRecPtr	cutoff;
	XLogRecPtr	redo;
	DIR		   *mappings_dir;
	struct dirent *mapping_de;
	char		path[MAXPGPATH + 20];

	/*
	 * We start of with a minimum of the last redo pointer. No new decoding
	 * slot will start before that, so that's a safe upper bound for removal.
	 */
	redo = FUNC3();

	/* now check for the restart ptrs from existing slots */
	cutoff = FUNC6();

	/* don't start earlier than the restart lsn */
	if (cutoff != InvalidXLogRecPtr && redo < cutoff)
		cutoff = redo;

	mappings_dir = FUNC0("pg_logical/mappings");
	while ((mapping_de = FUNC5(mappings_dir, "pg_logical/mappings")) != NULL)
	{
		struct stat statbuf;
		Oid			dboid;
		Oid			relid;
		XLogRecPtr	lsn;
		TransactionId rewrite_xid;
		TransactionId create_xid;
		uint32		hi,
					lo;

		if (FUNC19(mapping_de->d_name, ".") == 0 ||
			FUNC19(mapping_de->d_name, "..") == 0)
			continue;

		FUNC17(path, sizeof(path), "pg_logical/mappings/%s", mapping_de->d_name);
		if (FUNC13(path, &statbuf) == 0 && !FUNC7(statbuf.st_mode))
			continue;

		/* Skip over files that cannot be ours. */
		if (FUNC20(mapping_de->d_name, "map-", 4) != 0)
			continue;

		if (FUNC18(mapping_de->d_name, LOGICAL_REWRITE_FORMAT,
				   &dboid, &relid, &hi, &lo, &rewrite_xid, &create_xid) != 6)
			FUNC9(ERROR, "could not parse filename \"%s\"", mapping_de->d_name);

		lsn = ((uint64) hi) << 32 | lo;

		if (lsn < cutoff || cutoff == InvalidXLogRecPtr)
		{
			FUNC9(DEBUG1, "removing logical rewrite file \"%s\"", path);
			if (FUNC21(path) < 0)
				FUNC10(ERROR,
						(FUNC11(),
						 FUNC12("could not remove file \"%s\": %m", path)));
		}
		else
		{
			/* on some operating systems fsyncing a file requires O_RDWR */
			int			fd = FUNC4(path, O_RDWR | PG_BINARY);

			/*
			 * The file cannot vanish due to concurrency since this function
			 * is the only one removing logical mappings and it's run while
			 * CheckpointLock is held exclusively.
			 */
			if (fd < 0)
				FUNC10(ERROR,
						(FUNC11(),
						 FUNC12("could not open file \"%s\": %m", path)));

			/*
			 * We could try to avoid fsyncing files that either haven't
			 * changed or have only been created since the checkpoint's start,
			 * but it's currently not deemed worth the effort.
			 */
			FUNC16(WAIT_EVENT_LOGICAL_REWRITE_CHECKPOINT_SYNC);
			if (FUNC14(fd) != 0)
				FUNC10(FUNC8(ERROR),
						(FUNC11(),
						 FUNC12("could not fsync file \"%s\": %m", path)));
			FUNC15();

			if (FUNC1(fd) != 0)
				FUNC10(ERROR,
						(FUNC11(),
						 FUNC12("could not close file \"%s\": %m", path)));
		}
	}
	FUNC2(mappings_dir);
}