#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yyscan_t ;
struct TYPE_8__ {int argc; char** argv; scalar_t__ meta; void* first_line; int /*<<< orphan*/  expr; int /*<<< orphan*/  stats; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  TYPE_2__ Command ;

/* Variables and functions */
 int MAX_ARGS ; 
 int /*<<< orphan*/  META_COMMAND ; 
 scalar_t__ META_ELIF ; 
 scalar_t__ META_ELSE ; 
 scalar_t__ META_ENDIF ; 
 scalar_t__ META_GSET ; 
 scalar_t__ META_IF ; 
 scalar_t__ META_SET ; 
 scalar_t__ META_SETSHELL ; 
 scalar_t__ META_SHELL ; 
 scalar_t__ META_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  expr_parse_result ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (unsigned char) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*,int,void*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

__attribute__((used)) static Command *
FUNC17(PsqlScanState sstate, const char *source)
{
	Command    *my_command;
	PQExpBufferData word_buf;
	int			word_offset;
	int			offsets[MAX_ARGS];	/* offsets of argument words */
	int			start_offset;
	int			lineno;
	int			j;

	FUNC9(&word_buf);

	/* Remember location of the backslash */
	start_offset = FUNC6(sstate) - 1;
	lineno = FUNC3(sstate, start_offset);

	/* Collect first word of command */
	if (!FUNC1(sstate, &word_buf, &word_offset))
	{
		FUNC16(&word_buf);
		return NULL;
	}

	/* Allocate and initialize Command structure */
	my_command = (Command *) FUNC12(sizeof(Command));
	my_command->type = META_COMMAND;
	my_command->argc = 0;
	FUNC10(&my_command->stats);

	/* Save first word (command name) */
	j = 0;
	offsets[j] = word_offset;
	my_command->argv[j++] = FUNC14(word_buf.data);
	my_command->argc++;

	/* ... and convert it to enum form */
	my_command->meta = FUNC8(my_command->argv[0]);

	if (my_command->meta == META_SET ||
		my_command->meta == META_IF ||
		my_command->meta == META_ELIF)
	{
		yyscan_t	yyscanner;

		/* For \set, collect var name */
		if (my_command->meta == META_SET)
		{
			if (!FUNC1(sstate, &word_buf, &word_offset))
				FUNC15(source, lineno, my_command->first_line, my_command->argv[0],
							 "missing argument", NULL, -1);

			offsets[j] = word_offset;
			my_command->argv[j++] = FUNC14(word_buf.data);
			my_command->argc++;
		}

		/* then for all parse the expression */
		yyscanner = FUNC5(sstate, source, lineno, start_offset,
									  my_command->argv[0]);

		if (FUNC7(yyscanner) != 0)
		{
			/* dead code: exit done from syntax_error called by yyerror */
			FUNC0(1);
		}

		my_command->expr = expr_parse_result;

		/* Save line, trimming any trailing newline */
		my_command->first_line =
			FUNC4(sstate,
									   start_offset,
									   FUNC6(sstate),
									   true);

		FUNC2(yyscanner);

		FUNC16(&word_buf);

		return my_command;
	}

	/* For all other commands, collect remaining words. */
	while (FUNC1(sstate, &word_buf, &word_offset))
	{
		/*
		 * my_command->argv[0] is the command itself, so the max number of
		 * arguments is one less than MAX_ARGS
		 */
		if (j >= MAX_ARGS)
			FUNC15(source, lineno, my_command->first_line, my_command->argv[0],
						 "too many arguments", NULL, -1);

		offsets[j] = word_offset;
		my_command->argv[j++] = FUNC14(word_buf.data);
		my_command->argc++;
	}

	/* Save line, trimming any trailing newline */
	my_command->first_line =
		FUNC4(sstate,
								   start_offset,
								   FUNC6(sstate),
								   true);

	if (my_command->meta == META_SLEEP)
	{
		if (my_command->argc < 2)
			FUNC15(source, lineno, my_command->first_line, my_command->argv[0],
						 "missing argument", NULL, -1);

		if (my_command->argc > 3)
			FUNC15(source, lineno, my_command->first_line, my_command->argv[0],
						 "too many arguments", NULL,
						 offsets[3] - start_offset);

		/*
		 * Split argument into number and unit to allow "sleep 1ms" etc. We
		 * don't have to terminate the number argument with null because it
		 * will be parsed with atoi, which ignores trailing non-digit
		 * characters.
		 */
		if (my_command->argc == 2 && my_command->argv[1][0] != ':')
		{
			char	   *c = my_command->argv[1];

			while (FUNC11((unsigned char) *c))
				c++;
			if (*c)
			{
				my_command->argv[2] = c;
				offsets[2] = offsets[1] + (c - my_command->argv[1]);
				my_command->argc = 3;
			}
		}

		if (my_command->argc == 3)
		{
			if (FUNC13(my_command->argv[2], "us") != 0 &&
				FUNC13(my_command->argv[2], "ms") != 0 &&
				FUNC13(my_command->argv[2], "s") != 0)
				FUNC15(source, lineno, my_command->first_line, my_command->argv[0],
							 "unrecognized time unit, must be us, ms or s",
							 my_command->argv[2], offsets[2] - start_offset);
		}
	}
	else if (my_command->meta == META_SETSHELL)
	{
		if (my_command->argc < 3)
			FUNC15(source, lineno, my_command->first_line, my_command->argv[0],
						 "missing argument", NULL, -1);
	}
	else if (my_command->meta == META_SHELL)
	{
		if (my_command->argc < 2)
			FUNC15(source, lineno, my_command->first_line, my_command->argv[0],
						 "missing command", NULL, -1);
	}
	else if (my_command->meta == META_ELSE || my_command->meta == META_ENDIF)
	{
		if (my_command->argc != 1)
			FUNC15(source, lineno, my_command->first_line, my_command->argv[0],
						 "unexpected argument", NULL, -1);
	}
	else if (my_command->meta == META_GSET)
	{
		if (my_command->argc > 2)
			FUNC15(source, lineno, my_command->first_line, my_command->argv[0],
						 "too many arguments", NULL, -1);
	}
	else
	{
		/* my_command->meta == META_NONE */
		FUNC15(source, lineno, my_command->first_line, my_command->argv[0],
					 "invalid command", NULL, -1);
	}

	FUNC16(&word_buf);

	return my_command;
}