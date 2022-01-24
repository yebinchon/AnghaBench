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
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const char *dir)
{
	if (FUNC3(dir, S_IRWXU | S_IRWXG | S_IRWXO) < 0)
	{
		FUNC2(stderr, FUNC0("%s: could not create directory \"%s\": %s\n"),
				progname, dir, FUNC4(errno));
		FUNC1(2);
	}
}