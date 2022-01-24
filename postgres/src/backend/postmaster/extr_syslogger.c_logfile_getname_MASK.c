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
typedef  int /*<<< orphan*/  pg_time_t ;

/* Variables and functions */
 char* Log_directory ; 
 int /*<<< orphan*/  Log_filename ; 
 scalar_t__ MAXPGPATH ; 
 int /*<<< orphan*/  log_timezone ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,scalar_t__) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static char *
FUNC7(pg_time_t timestamp, const char *suffix)
{
	char	   *filename;
	int			len;

	filename = FUNC0(MAXPGPATH);

	FUNC3(filename, MAXPGPATH, "%s/", Log_directory);

	len = FUNC6(filename);

	/* treat Log_filename as a strftime pattern */
	FUNC2(filename + len, MAXPGPATH - len, Log_filename,
				FUNC1(&timestamp, log_timezone));

	if (suffix != NULL)
	{
		len = FUNC6(filename);
		if (len > 4 && (FUNC4(filename + (len - 4), ".log") == 0))
			len -= 4;
		FUNC5(filename + len, suffix, MAXPGPATH - len);
	}

	return filename;
}