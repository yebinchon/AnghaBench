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
typedef  int /*<<< orphan*/  initfilename ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 int MAXPGPATH ; 
 char* RELCACHE_INIT_FILENAME ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const char *tblspcpath)
{
	DIR		   *dir;
	struct dirent *de;
	char		initfilename[MAXPGPATH * 2];

	/* Scan the tablespace directory to find per-database directories */
	dir = FUNC0(tblspcpath);

	while ((de = FUNC2(dir, tblspcpath, LOG)) != NULL)
	{
		if (FUNC5(de->d_name, "0123456789") == FUNC4(de->d_name))
		{
			/* Try to remove the init file in each database */
			FUNC3(initfilename, sizeof(initfilename), "%s/%s/%s",
					 tblspcpath, de->d_name, RELCACHE_INIT_FILENAME);
			FUNC6(initfilename, LOG);
		}
	}

	FUNC1(dir);
}