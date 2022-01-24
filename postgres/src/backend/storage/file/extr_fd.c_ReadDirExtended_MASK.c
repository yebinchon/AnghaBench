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
struct dirent {int dummy; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ errno ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 

struct dirent *
FUNC4(DIR *dir, const char *dirname, int elevel)
{
	struct dirent *dent;

	/* Give a generic message for AllocateDir failure, if caller didn't */
	if (dir == NULL)
	{
		FUNC0(elevel,
				(FUNC1(),
				 FUNC2("could not open directory \"%s\": %m",
						dirname)));
		return NULL;
	}

	errno = 0;
	if ((dent = FUNC3(dir)) != NULL)
		return dent;

	if (errno)
		FUNC0(elevel,
				(FUNC1(),
				 FUNC2("could not read directory \"%s\": %m",
						dirname)));
	return NULL;
}