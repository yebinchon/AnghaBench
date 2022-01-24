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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  dbspace_path ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 int MAXPGPATH ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static void
FUNC7(const char *tsdirname)
{
	DIR		   *ts_dir;
	struct dirent *de;
	char		dbspace_path[MAXPGPATH * 2];

	ts_dir = FUNC0(tsdirname);

	while ((de = FUNC2(ts_dir, tsdirname, LOG)) != NULL)
	{
		/*
		 * We're only interested in the per-database directories, which have
		 * numeric names.  Note that this code will also (properly) ignore "."
		 * and "..".
		 */
		if (FUNC6(de->d_name, "0123456789") != FUNC5(de->d_name))
			continue;

		FUNC4(dbspace_path, sizeof(dbspace_path), "%s/%s",
				 tsdirname, de->d_name);
		FUNC3(dbspace_path);
	}

	FUNC1(ts_dir);
}