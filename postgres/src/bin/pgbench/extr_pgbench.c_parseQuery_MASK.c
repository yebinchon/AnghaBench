#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; } ;
struct TYPE_5__ {int argc; char** argv; TYPE_1__ lines; } ;
typedef  TYPE_2__ Command ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_ARGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 char* FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char**,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static bool
FUNC8(Command *cmd)
{
	char	   *sql,
			   *p;

	cmd->argc = 1;

	p = sql = FUNC4(cmd->lines.data);
	while ((p = FUNC7(p, ':')) != NULL)
	{
		char		var[13];
		char	   *name;
		int			eaten;

		name = FUNC2(p, &eaten);
		if (name == NULL)
		{
			while (*p == ':')
			{
				p++;
			}
			continue;
		}

		/*
		 * cmd->argv[0] is the SQL statement itself, so the max number of
		 * arguments is one less than MAX_ARGS
		 */
		if (cmd->argc >= MAX_ARGS)
		{
			FUNC1(stderr, "statement has too many arguments (maximum is %d): %s\n",
					MAX_ARGS - 1, cmd->lines.data);
			FUNC3(name);
			return false;
		}

		FUNC6(var, "$%d", cmd->argc);
		p = FUNC5(&sql, p, eaten, var);

		cmd->argv[cmd->argc] = name;
		cmd->argc++;
	}

	FUNC0(cmd->argv[0] == NULL);
	cmd->argv[0] = sql;
	return true;
}