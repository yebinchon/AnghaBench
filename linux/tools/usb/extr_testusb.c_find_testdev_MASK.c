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
struct testdev {char* name; int ifnum; struct testdev* next; int /*<<< orphan*/  speed; } ;
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FTW_F ; 
 struct testdev* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct testdev*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 struct testdev* testdevs ; 

__attribute__((used)) static int FUNC9(const char *name, const struct stat *sb, int flag)
{
	FILE				*fd;
	int				ifnum;
	struct testdev			*entry;

	(void)sb; /* unused */

	if (flag != FTW_F)
		return 0;

	fd = FUNC2(name, "rb");
	if (!fd) {
		FUNC5(name);
		return 0;
	}

	ifnum = FUNC8(fd);
	FUNC1(fd);
	if (ifnum < 0)
		return 0;

	entry = FUNC0(1, sizeof *entry);
	if (!entry)
		goto nomem;

	entry->name = FUNC7(name);
	if (!entry->name) {
		FUNC4(entry);
nomem:
		FUNC5("malloc");
		return 0;
	}

	entry->ifnum = ifnum;

	/* FIXME update USBDEVFS_CONNECTINFO so it tells about high speed etc */

	FUNC3(stderr, "%s speed\t%s\t%u\n",
		FUNC6(entry->speed), entry->name, entry->ifnum);

	entry->next = testdevs;
	testdevs = entry;
	return 0;
}