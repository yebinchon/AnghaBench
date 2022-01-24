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
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_BACKEND_VERSIONSTR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  argv0 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* exec_path ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* pg_config ; 
 char* pg_data ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* pgdata_opt ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 char* post_opts ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC14(void)
{
	char		cmd[MAXPGPATH],
				filename[MAXPGPATH],
			   *my_exec_path;
	FILE	   *fd;

	/* do nothing if we're working without knowledge of data dir */
	if (pg_config == NULL)
		return;

	/* If there is no postgresql.conf, it can't be a config-only dir */
	FUNC12(filename, sizeof(filename), "%s/postgresql.conf", pg_config);
	if ((fd = FUNC6(filename, "r")) == NULL)
		return;
	FUNC3(fd);

	/* If PG_VERSION exists, it can't be a config-only dir */
	FUNC12(filename, sizeof(filename), "%s/PG_VERSION", pg_config);
	if ((fd = FUNC6(filename, "r")) != NULL)
	{
		FUNC3(fd);
		return;
	}

	/* Must be a configuration directory, so find the data directory */

	/* we use a private my_exec_path to avoid interfering with later uses */
	if (exec_path == NULL)
		my_exec_path = FUNC5(argv0, "postgres", PG_BACKEND_VERSIONSTR);
	else
		my_exec_path = FUNC9(exec_path);

	/* it's important for -C to be the first option, see main.c */
	FUNC12(cmd, MAXPGPATH, "\"%s\" -C data_directory %s%s",
			 my_exec_path,
			 pgdata_opt ? pgdata_opt : "",
			 post_opts ? post_opts : "");

	fd = FUNC11(cmd, "r");
	if (fd == NULL || FUNC4(filename, sizeof(filename), fd) == NULL)
	{
		FUNC13(FUNC0("%s: could not determine the data directory using command \"%s\"\n"), progname, cmd);
		FUNC2(1);
	}
	FUNC8(fd);
	FUNC7(my_exec_path);

	/* strip trailing newline and carriage return */
	(void) FUNC10(filename);

	FUNC7(pg_data);
	pg_data = FUNC9(filename);
	FUNC1(pg_data);
}