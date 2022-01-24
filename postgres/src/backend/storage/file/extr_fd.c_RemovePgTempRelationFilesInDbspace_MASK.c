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
typedef  int /*<<< orphan*/  rm_path ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 int MAXPGPATH ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(const char *dbspacedirname)
{
	DIR		   *dbspace_dir;
	struct dirent *de;
	char		rm_path[MAXPGPATH * 2];

	dbspace_dir = FUNC0(dbspacedirname);

	while ((de = FUNC2(dbspace_dir, dbspacedirname, LOG)) != NULL)
	{
		if (!FUNC6(de->d_name))
			continue;

		FUNC7(rm_path, sizeof(rm_path), "%s/%s",
				 dbspacedirname, de->d_name);

		if (FUNC8(rm_path) < 0)
			FUNC3(LOG,
					(FUNC4(),
					 FUNC5("could not remove file \"%s\": %m",
							rm_path)));
	}

	FUNC1(dbspace_dir);
}