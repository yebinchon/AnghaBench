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
typedef  int /*<<< orphan*/  output_path ;
typedef  int /*<<< orphan*/  ClusterInfo ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_REPORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 

void
FUNC6(ClusterInfo *cluster)
{
	char		output_path[MAXPGPATH];

	FUNC4("Checking for incompatible \"line\" data type");

	FUNC5(output_path, sizeof(output_path), "tables_using_line.txt");

	if (FUNC0(cluster, "pg_catalog.line", output_path))
	{
		FUNC3(PG_REPORT, "fatal\n");
		FUNC2("Your installation contains the \"line\" data type in user tables.  This\n"
				 "data type changed its internal and input/output format between your old\n"
				 "and new clusters so this cluster cannot currently be upgraded.  You can\n"
				 "remove the problem tables and restart the upgrade.  A list of the problem\n"
				 "columns is in the file:\n"
				 "    %s\n\n", output_path);
	}
	else
		FUNC1();
}