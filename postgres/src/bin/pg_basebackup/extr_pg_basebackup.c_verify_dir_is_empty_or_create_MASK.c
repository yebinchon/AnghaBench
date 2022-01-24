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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  pg_dir_create_mode ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(char *dirname, bool *created, bool *found)
{
	switch (FUNC1(dirname))
	{
		case 0:

			/*
			 * Does not exist, so create
			 */
			if (FUNC3(dirname, pg_dir_create_mode) == -1)
			{
				FUNC2("could not create directory \"%s\": %m", dirname);
				FUNC0(1);
			}
			if (created)
				*created = true;
			return;
		case 1:

			/*
			 * Exists, empty
			 */
			if (found)
				*found = true;
			return;
		case 2:
		case 3:
		case 4:

			/*
			 * Exists, not empty
			 */
			FUNC2("directory \"%s\" exists but is not empty", dirname);
			FUNC0(1);
		case -1:

			/*
			 * Access problem
			 */
			FUNC2("could not access directory \"%s\": %m", dirname);
			FUNC0(1);
	}
}