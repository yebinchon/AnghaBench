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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,size_t,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ini_directives ; 
 char* FUNC2 (scalar_t__) ; 
 char rl_completion_append_character ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static char *FUNC5(const char *text, size_t textlen, int *state) /* {{{ */
{
	char *retval, *tmp;

	tmp = retval = FUNC1(text + 1, textlen - 1, state, FUNC0(ini_directives), NULL);
	if (retval) {
		retval = FUNC2(FUNC4(tmp) + 2);
		retval[0] = '#';
		FUNC3(&retval[1], tmp);
		rl_completion_append_character = '=';
	}
	return retval;
}