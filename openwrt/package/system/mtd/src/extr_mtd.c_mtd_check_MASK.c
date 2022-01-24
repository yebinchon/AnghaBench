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
 scalar_t__ buf ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  erasesize ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const char *mtd)
{
	char *next = NULL;
	char *str = NULL;
	int fd;

	if (FUNC4(mtd, ':')) {
		str = FUNC5(mtd);
		mtd = str;
	}

	do {
		next = FUNC4(mtd, ':');
		if (next) {
			*next = 0;
			next++;
		}

		fd = FUNC3(mtd);
		if (fd < 0)
			return 0;

		if (!buf)
			buf = FUNC2(erasesize);

		FUNC0(fd);
		mtd = next;
	} while (next);

	if (str)
		FUNC1(str);

	return 1;
}