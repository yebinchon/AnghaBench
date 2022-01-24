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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAXPGPATH ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 scalar_t__ FUNC11 (char*,struct stat*) ; 
 scalar_t__ max_replication_slots ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 

void
FUNC16(void)
{
	DIR		   *replication_dir;
	struct dirent *replication_de;

	FUNC7(DEBUG1, "starting up replication slots");

	/* restore all slots by iterating over all on-disk entries */
	replication_dir = FUNC0("pg_replslot");
	while ((replication_de = FUNC2(replication_dir, "pg_replslot")) != NULL)
	{
		struct stat statbuf;
		char		path[MAXPGPATH + 12];

		if (FUNC15(replication_de->d_name, ".") == 0 ||
			FUNC15(replication_de->d_name, "..") == 0)
			continue;

		FUNC14(path, sizeof(path), "pg_replslot/%s", replication_de->d_name);

		/* we're only creating directories here, skip if it's not our's */
		if (FUNC11(path, &statbuf) == 0 && !FUNC6(statbuf.st_mode))
			continue;

		/* we crashed while a slot was being setup or deleted, clean up */
		if (FUNC12(replication_de->d_name, ".tmp"))
		{
			if (!FUNC13(path, true))
			{
				FUNC8(WARNING,
						(FUNC9("could not remove directory \"%s\"",
								path)));
				continue;
			}
			FUNC10("pg_replslot", true);
			continue;
		}

		/* looks like a slot in a normal state, restore */
		FUNC5(replication_de->d_name);
	}
	FUNC1(replication_dir);

	/* currently no slots exist, we're done. */
	if (max_replication_slots <= 0)
		return;

	/* Now that we have recovered all the data, compute replication xmin */
	FUNC4(false);
	FUNC3();
}