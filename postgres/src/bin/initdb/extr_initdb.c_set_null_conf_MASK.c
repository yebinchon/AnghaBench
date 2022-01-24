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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PG_BINARY_W ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  pg_data ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	FILE	   *conf_file;
	char	   *path;

	path = FUNC5("%s/postgresql.conf", pg_data);
	conf_file = FUNC2(path, PG_BINARY_W);
	if (conf_file == NULL)
	{
		FUNC4("could not open file \"%s\" for writing: %m", path);
		FUNC0(1);
	}
	if (FUNC1(conf_file))
	{
		FUNC4("could not write file \"%s\": %m", path);
		FUNC0(1);
	}
	FUNC3(path);
}