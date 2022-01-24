#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  cmd_output ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {char* pgconfig; char* pgdata; char* bindir; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ ClusterInfo ;

/* Variables and functions */
 int MAXPGPATH ; 
 int MAX_STRING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 TYPE_1__ old_cluster ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(ClusterInfo *cluster)
{
	char		filename[MAXPGPATH];
	char		cmd[MAXPGPATH],
				cmd_output[MAX_STRING];
	FILE	   *fp,
			   *output;

	/* Initially assume config dir and data dir are the same */
	cluster->pgconfig = FUNC6(cluster->pgdata);

	/* If there is no postgresql.conf, it can't be a config-only dir */
	FUNC10(filename, sizeof(filename), "%s/postgresql.conf", cluster->pgconfig);
	if ((fp = FUNC3(filename, "r")) == NULL)
		return;
	FUNC1(fp);

	/* If PG_VERSION exists, it can't be a config-only dir */
	FUNC10(filename, sizeof(filename), "%s/PG_VERSION", cluster->pgconfig);
	if ((fp = FUNC3(filename, "r")) != NULL)
	{
		FUNC1(fp);
		return;
	}

	/* Must be a configuration directory, so find the real data directory. */

	if (cluster == &old_cluster)
		FUNC9("Finding the real data directory for the source cluster");
	else
		FUNC9("Finding the real data directory for the target cluster");

	/*
	 * We don't have a data directory yet, so we can't check the PG version,
	 * so this might fail --- only works for PG 9.2+.   If this fails,
	 * pg_upgrade will fail anyway because the data files will not be found.
	 */
	FUNC10(cmd, sizeof(cmd), "\"%s/postgres\" -D \"%s\" -C data_directory",
			 cluster->bindir, cluster->pgconfig);

	if ((output = FUNC8(cmd, "r")) == NULL ||
		FUNC2(cmd_output, sizeof(cmd_output), output) == NULL)
		FUNC5("could not get data directory using %s: %s\n",
				 cmd, FUNC11(errno));

	FUNC4(output);

	/* strip trailing newline and carriage return */
	(void) FUNC7(cmd_output);

	cluster->pgdata = FUNC6(cmd_output);

	FUNC0();
}