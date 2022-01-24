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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ GLOBALTABLESPACE_OID ; 
 char* FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TablespaceCreateLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*,struct stat*) ; 

void
FUNC15(Oid spcNode, Oid dbNode, bool isRedo)
{
	struct stat st;
	char	   *dir;

	/*
	 * The global tablespace doesn't have per-database subdirectories, so
	 * nothing to do for it.
	 */
	if (spcNode == GLOBALTABLESPACE_OID)
		return;

	FUNC0(FUNC5(spcNode));
	FUNC0(FUNC5(dbNode));

	dir = FUNC1(dbNode, spcNode);

	if (FUNC14(dir, &st) < 0)
	{
		/* Directory does not exist? */
		if (errno == ENOENT)
		{
			/*
			 * Acquire TablespaceCreateLock to ensure that no DROP TABLESPACE
			 * or TablespaceCreateDbspace is running concurrently.
			 */
			FUNC2(TablespaceCreateLock, LW_EXCLUSIVE);

			/*
			 * Recheck to see if someone created the directory while we were
			 * waiting for lock.
			 */
			if (FUNC14(dir, &st) == 0 && FUNC6(st.st_mode))
			{
				/* Directory was created */
			}
			else
			{
				/* Directory creation failed? */
				if (FUNC4(dir) < 0)
				{
					char	   *parentdir;

					/* Failure other than not exists or not in WAL replay? */
					if (errno != ENOENT || !isRedo)
						FUNC7(ERROR,
								(FUNC9(),
								 FUNC10("could not create directory \"%s\": %m",
										dir)));

					/*
					 * Parent directories are missing during WAL replay, so
					 * continue by creating simple parent directories rather
					 * than a symlink.
					 */

					/* create two parents up if not exist */
					parentdir = FUNC13(dir);
					FUNC11(parentdir);
					FUNC11(parentdir);
					/* Can't create parent and it doesn't already exist? */
					if (FUNC4(parentdir) < 0 && errno != EEXIST)
						FUNC7(ERROR,
								(FUNC9(),
								 FUNC10("could not create directory \"%s\": %m",
										parentdir)));
					FUNC12(parentdir);

					/* create one parent up if not exist */
					parentdir = FUNC13(dir);
					FUNC11(parentdir);
					/* Can't create parent and it doesn't already exist? */
					if (FUNC4(parentdir) < 0 && errno != EEXIST)
						FUNC7(ERROR,
								(FUNC9(),
								 FUNC10("could not create directory \"%s\": %m",
										parentdir)));
					FUNC12(parentdir);

					/* Create database directory */
					if (FUNC4(dir) < 0)
						FUNC7(ERROR,
								(FUNC9(),
								 FUNC10("could not create directory \"%s\": %m",
										dir)));
				}
			}

			FUNC3(TablespaceCreateLock);
		}
		else
		{
			FUNC7(ERROR,
					(FUNC9(),
					 FUNC10("could not stat directory \"%s\": %m", dir)));
		}
	}
	else
	{
		/* Is it not a directory? */
		if (!FUNC6(st.st_mode))
			FUNC7(ERROR,
					(FUNC8(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC10("\"%s\" exists but is not a directory",
							dir)));
	}

	FUNC12(dir);
}