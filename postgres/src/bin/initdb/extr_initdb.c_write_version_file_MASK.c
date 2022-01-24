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
 char* PG_MAJORVERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  pg_data ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC7(const char *extrapath)
{
	FILE	   *version_file;
	char	   *path;

	if (extrapath == NULL)
		path = FUNC6("%s/PG_VERSION", pg_data);
	else
		path = FUNC6("%s/%s/PG_VERSION", pg_data, extrapath);

	if ((version_file = FUNC2(path, PG_BINARY_W)) == NULL)
	{
		FUNC5("could not open file \"%s\" for writing: %m", path);
		FUNC0(1);
	}
	if (FUNC3(version_file, "%s\n", PG_MAJORVERSION) < 0 ||
		FUNC1(version_file))
	{
		FUNC5("could not write file \"%s\": %m", path);
		FUNC0(1);
	}
	FUNC4(path);
}