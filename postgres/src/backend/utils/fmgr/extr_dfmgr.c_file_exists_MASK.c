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
 scalar_t__ EACCES ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 

__attribute__((used)) static bool
FUNC6(const char *name)
{
	struct stat st;

	FUNC0(name != NULL);

	if (FUNC5(name, &st) == 0)
		return FUNC1(st.st_mode) ? false : true;
	else if (!(errno == ENOENT || errno == ENOTDIR || errno == EACCES))
		FUNC2(ERROR,
				(FUNC3(),
				 FUNC4("could not access file \"%s\": %m", name)));

	return false;
}