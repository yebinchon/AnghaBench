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
 scalar_t__ found_existing_pgdata ; 
 scalar_t__ found_existing_xlogdir ; 
 scalar_t__ made_new_pgdata ; 
 scalar_t__ made_new_xlogdir ; 
 int /*<<< orphan*/  noclean ; 
 int /*<<< orphan*/  pg_data ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ success ; 
 int /*<<< orphan*/  xlog_dir ; 

__attribute__((used)) static void
FUNC3(void)
{
	if (success)
		return;

	if (!noclean)
	{
		if (made_new_pgdata)
		{
			FUNC1("removing data directory \"%s\"", pg_data);
			if (!FUNC2(pg_data, true))
				FUNC0("failed to remove data directory");
		}
		else if (found_existing_pgdata)
		{
			FUNC1("removing contents of data directory \"%s\"",
						pg_data);
			if (!FUNC2(pg_data, false))
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
		/* otherwise died during startup, do nothing! */
	}
	else
	{
		if (made_new_pgdata || found_existing_pgdata)
			FUNC1("data directory \"%s\" not removed at user's request",
						pg_data);

		if (made_new_xlogdir || found_existing_xlogdir)
			FUNC1("WAL directory \"%s\" not removed at user's request",
						xlog_dir);
	}
}