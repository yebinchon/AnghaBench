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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int (*test)(void), char *name)
{
	int result;
	pid_t childpid;
	int ret;

	FUNC3(stdout);
	childpid = FUNC4();

	if (childpid) {
		FUNC7(childpid, &result, 0);
		if (FUNC1(result)) {
			ret = FUNC0(result);
			if (!ret)
				FUNC6("[RUN]\t%s\n", name);
			else
				FUNC5("[RUN]\t%s\n", name);
			return ret;
		}
		return 1;
	}

	FUNC2(test());
}