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
typedef  int /*<<< orphan*/  ver_filename ;
typedef  int uint32 ;
struct TYPE_3__ {char* pgdata; int /*<<< orphan*/  major_version_str; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ ClusterInfo ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int*,int*) ; 

uint32
FUNC6(ClusterInfo *cluster)
{
	FILE	   *version_fd;
	char		ver_filename[MAXPGPATH];
	int			v1 = 0,
				v2 = 0;

	FUNC4(ver_filename, sizeof(ver_filename), "%s/PG_VERSION",
			 cluster->pgdata);
	if ((version_fd = FUNC1(ver_filename, "r")) == NULL)
		FUNC3("could not open version file: %s\n", ver_filename);

	if (FUNC2(version_fd, "%63s", cluster->major_version_str) == 0 ||
		FUNC5(cluster->major_version_str, "%d.%d", &v1, &v2) < 1)
		FUNC3("could not parse PG_VERSION file from %s\n", cluster->pgdata);

	FUNC0(version_fd);

	if (v1 < 10)
	{
		/* old style, e.g. 9.6.1 */
		return v1 * 10000 + v2 * 100;
	}
	else
	{
		/* new style, e.g. 10.1 */
		return v1 * 10000;
	}
}