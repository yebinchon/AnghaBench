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
typedef  scalar_t__ File ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentResourceOwner ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int O_RDONLY ; 
 int PG_BINARY ; 
 scalar_t__ FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ errno ; 

File
FUNC6(const char *path)
{
	File		file;

	FUNC2(CurrentResourceOwner);

	/* We open the file read-only. */
	file = FUNC0(path, O_RDONLY | PG_BINARY);

	/* If no such file, then we don't raise an error. */
	if (file <= 0 && errno != ENOENT)
		FUNC3(ERROR,
				(FUNC4(),
				 FUNC5("could not open temporary file \"%s\": %m",
						path)));

	if (file > 0)
	{
		/* Register it for automatic close. */
		FUNC1(file);
	}

	return file;
}