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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  dbspace_path ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 int MAXPGPATH ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static void
FUNC10(const char *tsdirname, int op)
{
	DIR		   *ts_dir;
	struct dirent *de;
	char		dbspace_path[MAXPGPATH * 2];

	ts_dir = FUNC0(tsdirname);

	/*
	 * If we get ENOENT on a tablespace directory, log it and return.  This
	 * can happen if a previous DROP TABLESPACE crashed between removing the
	 * tablespace directory and removing the symlink in pg_tblspc.  We don't
	 * really want to prevent database startup in that scenario, so let it
	 * pass instead.  Any other type of error will be reported by ReadDir
	 * (causing a startup failure).
	 */
	if (ts_dir == NULL && errno == ENOENT)
	{
		FUNC4(LOG,
				(FUNC5(),
				 FUNC6("could not open directory \"%s\": %m",
						tsdirname)));
		return;
	}

	while ((de = FUNC2(ts_dir, tsdirname)) != NULL)
	{
		/*
		 * We're only interested in the per-database directories, which have
		 * numeric names.  Note that this code will also (properly) ignore "."
		 * and "..".
		 */
		if (FUNC9(de->d_name, "0123456789") != FUNC8(de->d_name))
			continue;

		FUNC7(dbspace_path, sizeof(dbspace_path), "%s/%s",
				 tsdirname, de->d_name);
		FUNC3(dbspace_path, op);
	}

	FUNC1(ts_dir);
}