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

/* Variables and functions */
 int /*<<< orphan*/  basedir ; 
 int /*<<< orphan*/  checksum_failure ; 
 scalar_t__ found_existing_pgdata ; 
 scalar_t__ found_existing_xlogdir ; 
 scalar_t__ found_tablespace_dirs ; 
 scalar_t__ in_log_streamer ; 
 scalar_t__ made_new_pgdata ; 
 scalar_t__ made_new_xlogdir ; 
 scalar_t__ made_tablespace_dirs ; 
 int /*<<< orphan*/  noclean ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ success ; 
 int /*<<< orphan*/  xlog_dir ; 

__attribute__((used)) static void
FUNC3(void)
{
	if (success || in_log_streamer)
		return;

	if (!noclean && !checksum_failure)
	{
		if (made_new_pgdata)
		{
			FUNC1("removing data directory \"%s\"", basedir);
			if (!FUNC2(basedir, true))
				FUNC0("failed to remove data directory");
		}
		else if (found_existing_pgdata)
		{
			FUNC1("removing contents of data directory \"%s\"", basedir);
			if (!FUNC2(basedir, false))
				FUNC0("failed to remove contents of data directory");
		}

		if (made_new_xlogdir)
		{
			FUNC1("removing WAL directory \"%s\"", xlog_dir);
			if (!FUNC2(xlog_dir, true))
				FUNC0("failed to remove WAL directory");
		}
		else if (found_existing_xlogdir)
		{
			FUNC1("removing contents of WAL directory \"%s\"", xlog_dir);
			if (!FUNC2(xlog_dir, false))
				FUNC0("failed to remove contents of WAL directory");
		}
	}
	else
	{
		if ((made_new_pgdata || found_existing_pgdata) && !checksum_failure)
			FUNC1("data directory \"%s\" not removed at user's request", basedir);

		if (made_new_xlogdir || found_existing_xlogdir)
			FUNC1("WAL directory \"%s\" not removed at user's request", xlog_dir);
	}

	if ((made_tablespace_dirs || found_tablespace_dirs) && !checksum_failure)
		FUNC1("changes to tablespace directories will not be undone");
}