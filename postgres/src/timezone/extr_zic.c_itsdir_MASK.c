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
 scalar_t__ EOVERFLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (size_t) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static bool
FUNC7(char const *name)
{
	struct stat st;
	int			res = FUNC4(name, &st);
#ifdef S_ISDIR
	if (res == 0)
		return S_ISDIR(st.st_mode) != 0;
#endif
	if (res == 0 || errno == EOVERFLOW)
	{
		size_t		n = FUNC6(name);
		char	   *nameslashdot = FUNC1(n + 3);
		bool		dir;

		FUNC3(nameslashdot, name, n);
		FUNC5(&nameslashdot[n], &"/."[!(n && name[n - 1] != '/')]);
		dir = FUNC4(nameslashdot, &st) == 0 || errno == EOVERFLOW;
		FUNC2(nameslashdot);
		return dir;
	}
	return false;
}