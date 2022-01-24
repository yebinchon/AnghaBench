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
 char** environ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4() /* {{{ */
{
	char **envp;
	char *s;

	/* this algo is the only one known to me
		that works well on all systems */
	while (*(envp = environ)) {
		char *eq = FUNC1(*envp, '=');

		s = FUNC2(*envp);

		if (eq) s[eq - *envp] = '\0';

		FUNC3(s);
		FUNC0(s);
	}

}