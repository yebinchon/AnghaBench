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
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  OPTS_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5(int argc, char *argv[], char *fullprogname)
{
	FILE	   *fp;
	int			i;

#define OPTS_FILE	"postmaster.opts"

	if ((fp = FUNC2(OPTS_FILE, "w")) == NULL)
	{
		FUNC0(LOG, "could not create file \"%s\": %m", OPTS_FILE);
		return false;
	}

	FUNC3(fp, "%s", fullprogname);
	for (i = 1; i < argc; i++)
		FUNC3(fp, " \"%s\"", argv[i]);
	FUNC4("\n", fp);

	if (FUNC1(fp))
	{
		FUNC0(LOG, "could not write file \"%s\": %m", OPTS_FILE);
		return false;
	}

	return true;
}