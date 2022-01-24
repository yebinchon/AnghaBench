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
 int MAX_ARG_COUNT ; 
 size_t MAX_ARG_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (char*) ; 
 char* FUNC3 (char**,char*) ; 

int
FUNC4(char *arg, char *buf, char *argv[])
{
	int res = 0;
	size_t argl;
	char *tok;
	char **ap = &buf;
	int i;

	if (arg == NULL) {
		/* invalid argument string */
		return -1;
	}

	argl = FUNC2(arg);
	if (argl == 0) {
		/* no arguments */
		return res;
	}

	if (argl >= MAX_ARG_LEN) {
		/* argument is too long */
		argl = MAX_ARG_LEN-1;
	}

	FUNC1(argv, 0, MAX_ARG_COUNT * sizeof(void *));
	FUNC0(buf, arg, argl);
	buf[argl] = '\0';

	for (i = 0; i < MAX_ARG_COUNT; i++) {
		tok = FUNC3(ap, ":");
		if (tok == NULL) {
			break;
		}
#if 0
		else if (tok[0] == '\0') {
			break;
		}
#endif
		argv[i] = tok;
		res++;
	}

	return res;
}