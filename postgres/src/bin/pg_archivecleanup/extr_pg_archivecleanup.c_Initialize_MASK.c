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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  archiveLocation ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	/*
	 * This code assumes that archiveLocation is a directory, so we use stat
	 * to test if it's accessible.
	 */
	struct stat stat_buf;

	if (FUNC3(archiveLocation, &stat_buf) != 0 ||
		!FUNC0(stat_buf.st_mode))
	{
		FUNC2("archive location \"%s\" does not exist",
					 archiveLocation);
		FUNC1(2);
	}
}