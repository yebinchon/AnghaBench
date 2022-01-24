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
typedef  int /*<<< orphan*/  full_path ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAXPGPATH ; 
 char* PG_VERSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ errno ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*) ; 
 long FUNC10 (char const*,char**,int) ; 

void
FUNC11(const char *path)
{
	char		full_path[MAXPGPATH];
	FILE	   *file;
	int			ret;
	long		file_major;
	long		my_major;
	char	   *endptr;
	char		file_version_string[64];
	const char *my_version_string = PG_VERSION;

	my_major = FUNC10(my_version_string, &endptr, 10);

	FUNC9(full_path, sizeof(full_path), "%s/PG_VERSION", path);

	file = FUNC0(full_path, "r");
	if (!file)
	{
		if (errno == ENOENT)
			FUNC2(FATAL,
					(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC7("\"%s\" is not a valid data directory",
							path),
					 FUNC5("File \"%s\" is missing.", full_path)));
		else
			FUNC2(FATAL,
					(FUNC4(),
					 FUNC7("could not open file \"%s\": %m", full_path)));
	}

	file_version_string[0] = '\0';
	ret = FUNC8(file, "%63s", file_version_string);
	file_major = FUNC10(file_version_string, &endptr, 10);

	if (ret != 1 || endptr == file_version_string)
		FUNC2(FATAL,
				(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC7("\"%s\" is not a valid data directory",
						path),
				 FUNC5("File \"%s\" does not contain valid data.",
						   full_path),
				 FUNC6("You might need to initdb.")));

	FUNC1(file);

	if (my_major != file_major)
		FUNC2(FATAL,
				(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC7("database files are incompatible with server"),
				 FUNC5("The data directory was initialized by PostgreSQL version %s, "
						   "which is not compatible with this version %s.",
						   file_version_string, my_version_string)));
}