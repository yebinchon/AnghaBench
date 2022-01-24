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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* DataDir ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_BINARY_R ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	char		path[MAXPGPATH];
	FILE	   *fp;

	FUNC3(path, sizeof(path), "%s/global/pg_control", DataDir);

	fp = FUNC0(path, PG_BINARY_R);
	if (fp == NULL)
	{
		FUNC5("%s: could not find the database system\n"
					 "Expected to find it in the directory \"%s\",\n"
					 "but could not open file \"%s\": %s\n",
					 progname, DataDir, path, FUNC4(errno));
		FUNC1(2);
	}
	FUNC2(fp);
}