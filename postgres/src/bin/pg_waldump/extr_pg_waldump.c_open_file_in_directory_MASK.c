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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENOENT ; 
 int MAXPGPATH ; 
 int O_RDONLY ; 
 int PG_BINARY ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(const char *directory, const char *fname)
{
	int			fd = -1;
	char		fpath[MAXPGPATH];

	FUNC0(directory != NULL);

	FUNC3(fpath, MAXPGPATH, "%s/%s", directory, fname);
	fd = FUNC2(fpath, O_RDONLY | PG_BINARY, 0);

	if (fd < 0 && errno != ENOENT)
		FUNC1("could not open file \"%s\": %s",
					fname, FUNC4(errno));
	return fd;
}