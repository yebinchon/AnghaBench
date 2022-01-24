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

/* Variables and functions */
 scalar_t__ NAME_MAX ; 
 scalar_t__ PATH_MAX ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char*,int*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(char *path, char *newpath, char *lastname, int *presel)
{
	char *dir;

	/* Save history */
	FUNC6(lastname, FUNC4(path), NAME_MAX + 1);

	FUNC6(newpath, path, PATH_MAX);
	while (true) {
		dir = FUNC3(path, newpath, presel);
		if (FUNC1(path) || FUNC1(newpath)) {
			if (!dir)
				dir = FUNC0(newpath);
			break;
		}
		if (!dir) {
			FUNC6(path, newpath, PATH_MAX);
			continue;
		}
		break;
	}

	FUNC6(path, dir, PATH_MAX);

	FUNC2("cannot access dir");
	FUNC5();
}