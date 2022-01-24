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
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFO ; 
 int MAXPGPATH ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*) ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char const*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 scalar_t__ FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(const char *slotname)
{
	DIR		   *spill_dir;
	struct dirent *spill_de;
	struct stat statbuf;
	char		path[MAXPGPATH * 2 + 12];

	FUNC9(path, "pg_replslot/%s", slotname);

	/* we're only handling directories here, skip if it's not ours */
	if (FUNC7(path, &statbuf) == 0 && !FUNC3(statbuf.st_mode))
		return;

	spill_dir = FUNC0(path);
	while ((spill_de = FUNC2(spill_dir, path, INFO)) != NULL)
	{
		/* only look at names that can be ours */
		if (FUNC10(spill_de->d_name, "xid", 3) == 0)
		{
			FUNC8(path, sizeof(path),
					 "pg_replslot/%s/%s", slotname,
					 spill_de->d_name);

			if (FUNC11(path) != 0)
				FUNC4(ERROR,
						(FUNC5(),
						 FUNC6("could not remove file \"%s\" during removal of pg_replslot/%s/xid*: %m",
								path, slotname)));
		}
	}
	FUNC1(spill_dir);
}