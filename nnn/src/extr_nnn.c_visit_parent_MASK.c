#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ filtermode; } ;

/* Variables and functions */
 int FILTER ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  R_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ cfg ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC5(char *path, char *newpath, int *presel)
{
	char *dir;

	/* There is no going back */
	if (FUNC2(path)) {
		/* Continue in navigate-as-you-type mode, if enabled */
		if (cfg.filtermode)
			*presel = FILTER;
		return NULL;
	}

	/* Use a copy as dirname() may change the string passed */
	FUNC4(newpath, path, PATH_MAX);

	dir = FUNC1(newpath);
	if (FUNC0(dir, R_OK) == -1) {
		FUNC3(presel);
		return NULL;
	}

	return dir;
}