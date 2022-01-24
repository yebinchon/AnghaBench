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
 int /*<<< orphan*/  CMD_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* g_buf ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC8(char *prompt, char *path, char *curpath, int *presel)
{
	/* Switch to current path for readline(3) */
	if (FUNC1(path) == -1) {
		FUNC4(presel);
		return NULL;
	}

	FUNC2();

	char *input = FUNC5(prompt);

	FUNC6();

	if (FUNC1(curpath) == -1) {
		FUNC4(presel);
		FUNC3(input);
		return NULL;
	}

	if (input && input[0]) {
		FUNC0(input);
		FUNC7(g_buf, input, CMD_LEN_MAX);
		FUNC3(input);
		return g_buf;
	}

	FUNC3(input);
	return NULL;
}