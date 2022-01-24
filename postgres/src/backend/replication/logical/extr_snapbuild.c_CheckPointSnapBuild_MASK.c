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
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  MAXPGPATH ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*) ; 
 int FUNC12 (char*,char*,int*,int*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*) ; 

void
FUNC15(void)
{
	XLogRecPtr	cutoff;
	XLogRecPtr	redo;
	DIR		   *snap_dir;
	struct dirent *snap_de;
	char		path[MAXPGPATH + 21];

	/*
	 * We start off with a minimum of the last redo pointer. No new
	 * replication slot will start before that, so that's a safe upper bound
	 * for removal.
	 */
	redo = FUNC2();

	/* now check for the restart ptrs from existing slots */
	cutoff = FUNC4();

	/* don't start earlier than the restart lsn */
	if (redo < cutoff)
		cutoff = redo;

	snap_dir = FUNC0("pg_logical/snapshots");
	while ((snap_de = FUNC3(snap_dir, "pg_logical/snapshots")) != NULL)
	{
		uint32		hi;
		uint32		lo;
		XLogRecPtr	lsn;
		struct stat statbuf;

		if (FUNC13(snap_de->d_name, ".") == 0 ||
			FUNC13(snap_de->d_name, "..") == 0)
			continue;

		FUNC11(path, sizeof(path), "pg_logical/snapshots/%s", snap_de->d_name);

		if (FUNC10(path, &statbuf) == 0 && !FUNC5(statbuf.st_mode))
		{
			FUNC6(DEBUG1, "only regular files expected: %s", path);
			continue;
		}

		/*
		 * temporary filenames from SnapBuildSerialize() include the LSN and
		 * everything but are postfixed by .$pid.tmp. We can just remove them
		 * the same as other files because there can be none that are
		 * currently being written that are older than cutoff.
		 *
		 * We just log a message if a file doesn't fit the pattern, it's
		 * probably some editors lock/state file or similar...
		 */
		if (FUNC12(snap_de->d_name, "%X-%X.snap", &hi, &lo) != 2)
		{
			FUNC7(LOG,
					(FUNC9("could not parse file name \"%s\"", path)));
			continue;
		}

		lsn = ((uint64) hi) << 32 | lo;

		/* check whether we still need it */
		if (lsn < cutoff || cutoff == InvalidXLogRecPtr)
		{
			FUNC6(DEBUG1, "removing snapbuild snapshot %s", path);

			/*
			 * It's not particularly harmful, though strange, if we can't
			 * remove the file here. Don't prevent the checkpoint from
			 * completing, that'd be a cure worse than the disease.
			 */
			if (FUNC14(path) < 0)
			{
				FUNC7(LOG,
						(FUNC8(),
						 FUNC9("could not remove file \"%s\": %m",
								path)));
				continue;
			}
		}
	}
	FUNC1(snap_dir);
}