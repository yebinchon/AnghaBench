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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FALSE ; 
 int TRUE ; 
 scalar_t__ cfgdir ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 size_t FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int) ; 

__attribute__((used)) static bool FUNC6(const char *curpath)
{
	bool ret = TRUE;
	size_t len = FUNC4(cfgdir);

	FUNC5(cfgdir + len, "/.lastd", 8);
	FUNC0(cfgdir);

	FILE *fp = FUNC2(cfgdir, "w");

	if (fp) {
		if (FUNC3(fp, "cd \"%s\"", curpath) < 0)
			ret = FALSE;

		FUNC1(fp);
	} else
		ret = FALSE;

	return ret;
}