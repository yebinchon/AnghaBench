#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmd_output ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_3__ {char* bindir; int bin_version; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ ClusterInfo ;

/* Variables and functions */
 int MAXPGPATH ; 
 int MAX_STRING ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int FUNC5 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(ClusterInfo *cluster)
{
	char		cmd[MAXPGPATH],
				cmd_output[MAX_STRING];
	FILE	   *output;
	int			v1 = 0,
				v2 = 0;

	FUNC4(cmd, sizeof(cmd), "\"%s/pg_ctl\" --version", cluster->bindir);

	if ((output = FUNC3(cmd, "r")) == NULL ||
		FUNC0(cmd_output, sizeof(cmd_output), output) == NULL)
		FUNC2("could not get pg_ctl version data using %s: %s\n",
				 cmd, FUNC6(errno));

	FUNC1(output);

	if (FUNC5(cmd_output, "%*s %*s %d.%d", &v1, &v2) < 1)
		FUNC2("could not get pg_ctl version output from %s\n", cmd);

	if (v1 < 10)
	{
		/* old style, e.g. 9.6.1 */
		cluster->bin_version = v1 * 10000 + v2 * 100;
	}
	else
	{
		/* new style, e.g. 10.1 */
		cluster->bin_version = v1 * 10000;
	}
}