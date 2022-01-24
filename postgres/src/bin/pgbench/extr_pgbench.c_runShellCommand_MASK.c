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
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CState ;

/* Variables and functions */
 int SHELL_COMMAND_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char**,int) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  timer_exceeded ; 

__attribute__((used)) static bool
FUNC12(CState *st, char *variable, char **argv, int argc)
{
	char		command[SHELL_COMMAND_SIZE];
	int			i,
				len = 0;
	FILE	   *fp;
	char		res[64];
	char	   *endptr;
	int			retval;

	/*----------
	 * Join arguments with whitespace separators. Arguments starting with
	 * exactly one colon are treated as variables:
	 *	name - append a string "name"
	 *	:var - append a variable named 'var'
	 *	::name - append a string ":name"
	 *----------
	 */
	for (i = 0; i < argc; i++)
	{
		char	   *arg;
		int			arglen;

		if (argv[i][0] != ':')
		{
			arg = argv[i];		/* a string literal */
		}
		else if (argv[i][1] == ':')
		{
			arg = argv[i] + 1;	/* a string literal starting with colons */
		}
		else if ((arg = FUNC2(st, argv[i] + 1)) == NULL)
		{
			FUNC1(stderr, "%s: undefined variable \"%s\"\n",
					argv[0], argv[i]);
			return false;
		}

		arglen = FUNC9(arg);
		if (len + arglen + (i > 0 ? 1 : 0) >= SHELL_COMMAND_SIZE - 1)
		{
			FUNC1(stderr, "%s: shell command is too long\n", argv[0]);
			return false;
		}

		if (i > 0)
			command[len++] = ' ';
		FUNC4(command + len, arg, arglen);
		len += arglen;
	}

	command[len] = '\0';

	/* Fast path for non-assignment case */
	if (variable == NULL)
	{
		if (FUNC11(command))
		{
			if (!timer_exceeded)
				FUNC1(stderr, "%s: could not launch shell command\n", argv[0]);
			return false;
		}
		return true;
	}

	/* Execute the command with pipe and read the standard output. */
	if ((fp = FUNC6(command, "r")) == NULL)
	{
		FUNC1(stderr, "%s: could not launch shell command\n", argv[0]);
		return false;
	}
	if (FUNC0(res, sizeof(res), fp) == NULL)
	{
		if (!timer_exceeded)
			FUNC1(stderr, "%s: could not read result of shell command\n", argv[0]);
		(void) FUNC5(fp);
		return false;
	}
	if (FUNC5(fp) < 0)
	{
		FUNC1(stderr, "%s: could not close shell command\n", argv[0]);
		return false;
	}

	/* Check whether the result is an integer and assign it to the variable */
	retval = (int) FUNC10(res, &endptr, 10);
	while (*endptr != '\0' && FUNC3((unsigned char) *endptr))
		endptr++;
	if (*res == '\0' || *endptr != '\0')
	{
		FUNC1(stderr, "%s: shell command must return an integer (not \"%s\")\n",
				argv[0], res);
		return false;
	}
	if (!FUNC8(st, "setshell", variable, retval))
		return false;

#ifdef DEBUG
	printf("shell parameter name: \"%s\", value: \"%s\"\n", argv[1], res);
#endif
	return true;
}