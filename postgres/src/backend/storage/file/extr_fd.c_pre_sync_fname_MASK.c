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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ EACCES ; 
 int O_RDONLY ; 
 int FUNC1 (char const*,int) ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(const char *fname, bool isdir, int elevel)
{
	int			fd;

	/* Don't try to flush directories, it'll likely just fail */
	if (isdir)
		return;

	fd = FUNC1(fname, O_RDONLY | PG_BINARY);

	if (fd < 0)
	{
		if (errno == EACCES)
			return;
		FUNC2(elevel,
				(FUNC3(),
				 FUNC4("could not open file \"%s\": %m", fname)));
		return;
	}

	/*
	 * pg_flush_data() ignores errors, which is ok because this is only a
	 * hint.
	 */
	FUNC5(fd, 0, 0);

	if (FUNC0(fd) != 0)
		FUNC2(elevel,
				(FUNC3(),
				 FUNC4("could not close file \"%s\": %m", fname)));
}