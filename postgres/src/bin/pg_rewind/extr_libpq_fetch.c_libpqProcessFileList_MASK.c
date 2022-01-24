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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  file_type_t ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  FILE_TYPE_REGULAR ; 
 int /*<<< orphan*/  FILE_TYPE_SYMLINK ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

void
FUNC12(void)
{
	PGresult   *res;
	const char *sql;
	int			i;

	/*
	 * Create a recursive directory listing of the whole data directory.
	 *
	 * The WITH RECURSIVE part does most of the work. The second part gets the
	 * targets of the symlinks in pg_tblspc directory.
	 *
	 * XXX: There is no backend function to get a symbolic link's target in
	 * general, so if the admin has put any custom symbolic links in the data
	 * directory, they won't be copied correctly.
	 */
	sql =
		"WITH RECURSIVE files (path, filename, size, isdir) AS (\n"
		"  SELECT '' AS path, filename, size, isdir FROM\n"
		"  (SELECT pg_ls_dir('.', true, false) AS filename) AS fn,\n"
		"        pg_stat_file(fn.filename, true) AS this\n"
		"  UNION ALL\n"
		"  SELECT parent.path || parent.filename || '/' AS path,\n"
		"         fn, this.size, this.isdir\n"
		"  FROM files AS parent,\n"
		"       pg_ls_dir(parent.path || parent.filename, true, false) AS fn,\n"
		"       pg_stat_file(parent.path || parent.filename || '/' || fn, true) AS this\n"
		"       WHERE parent.isdir = 't'\n"
		")\n"
		"SELECT path || filename, size, isdir,\n"
		"       pg_tablespace_location(pg_tablespace.oid) AS link_target\n"
		"FROM files\n"
		"LEFT OUTER JOIN pg_tablespace ON files.path = 'pg_tblspc/'\n"
		"                             AND oid::text = files.filename\n";
	res = FUNC1(conn, sql);

	if (FUNC7(res) != PGRES_TUPLES_OK)
		FUNC9("could not fetch file list: %s",
				 FUNC6(res));

	/* sanity check the result set */
	if (FUNC4(res) != 4)
		FUNC9("unexpected result set while fetching file list");

	/* Read result to local variables */
	for (i = 0; i < FUNC5(res); i++)
	{
		char	   *path = FUNC3(res, i, 0);
		int64		filesize = FUNC8(FUNC3(res, i, 1));
		bool		isdir = (FUNC11(FUNC3(res, i, 2), "t") == 0);
		char	   *link_target = FUNC3(res, i, 3);
		file_type_t type;

		if (FUNC2(res, 0, 1))
		{
			/*
			 * The file was removed from the server while the query was
			 * running. Ignore it.
			 */
			continue;
		}

		if (link_target[0])
			type = FILE_TYPE_SYMLINK;
		else if (isdir)
			type = FILE_TYPE_DIRECTORY;
		else
			type = FILE_TYPE_REGULAR;

		FUNC10(path, type, filesize, link_target);
	}
	FUNC0(res);
}