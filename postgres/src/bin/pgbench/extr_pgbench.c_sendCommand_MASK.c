#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__** commands; } ;
struct TYPE_10__ {int id; int* prepared; size_t use_file; int command; int /*<<< orphan*/  ecnt; int /*<<< orphan*/  con; } ;
struct TYPE_9__ {char** argv; scalar_t__ type; scalar_t__ argc; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ Command ;
typedef  TYPE_2__ CState ;

/* Variables and functions */
 int MAX_ARGS ; 
 int MAX_PREPARE_NAME ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ QUERY_EXTENDED ; 
 scalar_t__ QUERY_PREPARED ; 
 scalar_t__ QUERY_SIMPLE ; 
 scalar_t__ SQL_COMMAND ; 
 char* FUNC7 (TYPE_2__*,char*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*,char const**) ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,size_t,int) ; 
 scalar_t__ querymode ; 
 TYPE_3__* sql_script ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bool
FUNC13(CState *st, Command *command)
{
	int			r;

	if (querymode == QUERY_SIMPLE)
	{
		char	   *sql;

		sql = FUNC11(command->argv[0]);
		sql = FUNC7(st, sql);

		if (debug)
			FUNC8(stderr, "client %d sending %s\n", st->id, sql);
		r = FUNC4(st->con, sql);
		FUNC9(sql);
	}
	else if (querymode == QUERY_EXTENDED)
	{
		const char *sql = command->argv[0];
		const char *params[MAX_ARGS];

		FUNC10(st, command, params);

		if (debug)
			FUNC8(stderr, "client %d sending %s\n", st->id, sql);
		r = FUNC5(st->con, sql, command->argc - 1,
							  NULL, params, NULL, NULL, 0);
	}
	else if (querymode == QUERY_PREPARED)
	{
		char		name[MAX_PREPARE_NAME];
		const char *params[MAX_ARGS];

		if (!st->prepared[st->use_file])
		{
			int			j;
			Command   **commands = sql_script[st->use_file].commands;

			for (j = 0; commands[j] != NULL; j++)
			{
				PGresult   *res;
				char		name[MAX_PREPARE_NAME];

				if (commands[j]->type != SQL_COMMAND)
					continue;
				FUNC12(name, st->use_file, j);
				res = FUNC2(st->con, name,
								commands[j]->argv[0], commands[j]->argc - 1, NULL);
				if (FUNC3(res) != PGRES_COMMAND_OK)
					FUNC8(stderr, "%s", FUNC1(st->con));
				FUNC0(res);
			}
			st->prepared[st->use_file] = true;
		}

		FUNC10(st, command, params);
		FUNC12(name, st->use_file, st->command);

		if (debug)
			FUNC8(stderr, "client %d sending %s\n", st->id, name);
		r = FUNC6(st->con, name, command->argc - 1,
								params, NULL, NULL, 0);
	}
	else						/* unknown sql mode */
		r = 0;

	if (r == 0)
	{
		if (debug)
			FUNC8(stderr, "client %d could not send %s\n",
					st->id, command->argv[0]);
		st->ecnt++;
		return false;
	}
	else
		return true;
}