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
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static bool
FUNC6(const char *dirname, const char *fname, int fnamelen,
				  char *canonname, int canonnamelen)
{
	bool		found = false;
	DIR		   *dirdesc;
	struct dirent *direntry;

	dirdesc = FUNC0(dirname);

	while ((direntry = FUNC2(dirdesc, dirname, LOG)) != NULL)
	{
		/*
		 * Ignore . and .., plus any other "hidden" files.  This is a security
		 * measure to prevent access to files outside the timezone directory.
		 */
		if (direntry->d_name[0] == '.')
			continue;

		if (FUNC5(direntry->d_name) == fnamelen &&
			FUNC3(direntry->d_name, fname, fnamelen) == 0)
		{
			/* Found our match */
			FUNC4(canonname, direntry->d_name, canonnamelen);
			found = true;
			break;
		}
	}

	FUNC1(dirdesc);

	return found;
}