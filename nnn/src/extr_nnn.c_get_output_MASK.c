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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  F_CLI ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int,char*) ; 
 char* FUNC7 (char*,size_t const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  pager ; 
 int FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC12(char *buf, const size_t bytes, const char *file,
			const char *arg1, const char *arg2, const bool page)
{
	pid_t pid;
	int pipefd[2];
	FILE *pf;
	int tmp, flags;
	char *ret = NULL;

	if (FUNC9(pipefd) == -1)
		FUNC3();

	for (tmp = 0; tmp < 2; ++tmp) {
		/* Get previous flags */
		flags = FUNC5(pipefd[tmp], F_GETFL, 0);

		/* Set bit for non-blocking flag */
		flags |= O_NONBLOCK;

		/* Change flags on fd */
		FUNC5(pipefd[tmp], F_SETFL, flags);
	}

	pid = FUNC8();
	if (pid == 0) {
		/* In child */
		FUNC1(pipefd[0]);
		FUNC2(pipefd[1], STDOUT_FILENO);
		FUNC2(pipefd[1], STDERR_FILENO);
		FUNC1(pipefd[1]);
		FUNC4(file, file, arg1, arg2, NULL);
		FUNC0(1);
	}

	/* In parent */
	FUNC11(pid, &tmp, 0);
	FUNC1(pipefd[1]);

	if (!page) {
		pf = FUNC6(pipefd[0], "r");
		if (pf) {
			ret = FUNC7(buf, bytes, pf);
			FUNC1(pipefd[0]);
		}

		return ret;
	}


	pid = FUNC8();
	if (pid == 0) {
		/* Show in pager in child */
		FUNC2(pipefd[0], STDIN_FILENO);
		FUNC1(pipefd[0]);
		FUNC10(pager, NULL, NULL, NULL, F_CLI);
		FUNC0(1);
	}

	/* In parent */
	FUNC11(pid, &tmp, 0);
	FUNC1(pipefd[0]);

	return NULL;
}