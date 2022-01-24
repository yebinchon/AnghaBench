#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_12__ {TYPE_1__** commands; } ;
struct TYPE_11__ {size_t use_file; size_t command; int id; int /*<<< orphan*/  cstack; scalar_t__ sleep_until; } ;
struct TYPE_10__ {scalar_t__ type; int argc; char** argv; scalar_t__ meta; int /*<<< orphan*/ * expr; } ;
typedef  int /*<<< orphan*/  PgBenchValue ;
typedef  int /*<<< orphan*/  PgBenchExpr ;
typedef  int /*<<< orphan*/  ConnectionStateEnum ;
typedef  TYPE_1__ Command ;
typedef  TYPE_2__ CState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CSTATE_ABORTED ; 
 int /*<<< orphan*/  CSTATE_END_COMMAND ; 
 int /*<<< orphan*/  CSTATE_SLEEP ; 
#define  IFSTATE_ELSE_FALSE 133 
#define  IFSTATE_ELSE_TRUE 132 
#define  IFSTATE_FALSE 131 
#define  IFSTATE_IGNORED 130 
#define  IFSTATE_NONE 129 
#define  IFSTATE_TRUE 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ META_COMMAND ; 
 scalar_t__ META_ELIF ; 
 scalar_t__ META_ELSE ; 
 scalar_t__ META_ENDIF ; 
 scalar_t__ META_IF ; 
 scalar_t__ META_SET ; 
 scalar_t__ META_SETSHELL ; 
 scalar_t__ META_SHELL ; 
 scalar_t__ META_SLEEP ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*,char**,int) ; 
 TYPE_3__* sql_script ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ConnectionStateEnum
FUNC16(CState *st, instr_time *now)
{
	Command    *command = sql_script[st->use_file].commands[st->command];
	int			argc;
	char	  **argv;

	FUNC0(command != NULL && command->type == META_COMMAND);

	argc = command->argc;
	argv = command->argv;

	if (debug)
	{
		FUNC12(stderr, "client %d executing \\%s", st->id, argv[0]);
		for (int i = 1; i < argc; i++)
			FUNC12(stderr, " %s", argv[i]);
		FUNC12(stderr, "\n");
	}

	if (command->meta == META_SLEEP)
	{
		int			usec;

		/*
		 * A \sleep doesn't execute anything, we just get the delay from the
		 * argument, and enter the CSTATE_SLEEP state.  (The per-command
		 * latency will be recorded in CSTATE_SLEEP state, not here, after the
		 * delay has elapsed.)
		 */
		if (!FUNC11(st, argc, argv, &usec))
		{
			FUNC4(st, "sleep", "execution of meta-command failed");
			return CSTATE_ABORTED;
		}

		FUNC2(*now);
		st->sleep_until = FUNC1(*now) + usec;
		return CSTATE_SLEEP;
	}
	else if (command->meta == META_SET)
	{
		PgBenchExpr *expr = command->expr;
		PgBenchValue result;

		if (!FUNC10(st, expr, &result))
		{
			FUNC4(st, argv[0], "evaluation of meta-command failed");
			return CSTATE_ABORTED;
		}

		if (!FUNC13(st, argv[0], argv[1], &result))
		{
			FUNC4(st, "set", "assignment of meta-command failed");
			return CSTATE_ABORTED;
		}
	}
	else if (command->meta == META_IF)
	{
		/* backslash commands with an expression to evaluate */
		PgBenchExpr *expr = command->expr;
		PgBenchValue result;
		bool		cond;

		if (!FUNC10(st, expr, &result))
		{
			FUNC4(st, argv[0], "evaluation of meta-command failed");
			return CSTATE_ABORTED;
		}

		cond = FUNC15(&result);
		FUNC9(st->cstack, cond ? IFSTATE_TRUE : IFSTATE_FALSE);
	}
	else if (command->meta == META_ELIF)
	{
		/* backslash commands with an expression to evaluate */
		PgBenchExpr *expr = command->expr;
		PgBenchValue result;
		bool		cond;

		if (FUNC6(st->cstack) == IFSTATE_TRUE)
		{
			/* elif after executed block, skip eval and wait for endif. */
			FUNC7(st->cstack, IFSTATE_IGNORED);
			return CSTATE_END_COMMAND;
		}

		if (!FUNC10(st, expr, &result))
		{
			FUNC4(st, argv[0], "evaluation of meta-command failed");
			return CSTATE_ABORTED;
		}

		cond = FUNC15(&result);
		FUNC0(FUNC6(st->cstack) == IFSTATE_FALSE);
		FUNC7(st->cstack, cond ? IFSTATE_TRUE : IFSTATE_FALSE);
	}
	else if (command->meta == META_ELSE)
	{
		switch (FUNC6(st->cstack))
		{
			case IFSTATE_TRUE:
				FUNC7(st->cstack, IFSTATE_ELSE_FALSE);
				break;
			case IFSTATE_FALSE: /* inconsistent if active */
			case IFSTATE_IGNORED:	/* inconsistent if active */
			case IFSTATE_NONE:	/* else without if */
			case IFSTATE_ELSE_TRUE: /* else after else */
			case IFSTATE_ELSE_FALSE:	/* else after else */
			default:
				/* dead code if conditional check is ok */
				FUNC0(false);
		}
	}
	else if (command->meta == META_ENDIF)
	{
		FUNC0(!FUNC5(st->cstack));
		FUNC8(st->cstack);
	}
	else if (command->meta == META_SETSHELL)
	{
		if (!FUNC14(st, argv[1], argv + 2, argc - 2))
		{
			FUNC4(st, "setshell", "execution of meta-command failed");
			return CSTATE_ABORTED;
		}
	}
	else if (command->meta == META_SHELL)
	{
		if (!FUNC14(st, NULL, argv + 1, argc - 1))
		{
			FUNC4(st, "shell", "execution of meta-command failed");
			return CSTATE_ABORTED;
		}
	}

	/*
	 * executing the expression or shell command might have taken a
	 * non-negligible amount of time, so reset 'now'
	 */
	FUNC3(*now);

	return CSTATE_END_COMMAND;
}