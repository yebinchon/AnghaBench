#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int id; int use_file; int command; int /*<<< orphan*/  con; int /*<<< orphan*/  ecnt; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ CState ;

/* Variables and functions */
#define  PGRES_COMMAND_OK 130 
#define  PGRES_EMPTY_QUERY 129 
#define  PGRES_TUPLES_OK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bool
FUNC12(CState *st, char *varprefix)
{
	PGresult   *res;
	PGresult   *next_res;
	int			qrynum = 0;

	res = FUNC3(st->con);

	while (res != NULL)
	{
		bool		is_last;

		/* peek at the next result to know whether the current is last */
		next_res = FUNC3(st->con);
		is_last = (next_res == NULL);

		switch (FUNC7(res))
		{
			case PGRES_COMMAND_OK:	/* non-SELECT commands */
			case PGRES_EMPTY_QUERY: /* may be used for testing no-op overhead */
				if (is_last && varprefix != NULL)
				{
					FUNC8(stderr,
							"client %d script %d command %d query %d: expected one row, got %d\n",
							st->id, st->use_file, st->command, qrynum, 0);
					goto error;
				}
				break;

			case PGRES_TUPLES_OK:
				if (is_last && varprefix != NULL)
				{
					if (FUNC6(res) != 1)
					{
						FUNC8(stderr,
								"client %d script %d command %d query %d: expected one row, got %d\n",
								st->id, st->use_file, st->command, qrynum, FUNC6(res));
						goto error;
					}

					/* store results into variables */
					for (int fld = 0; fld < FUNC5(res); fld++)
					{
						char	   *varname = FUNC2(res, fld);

						/* allocate varname only if necessary, freed below */
						if (*varprefix != '\0')
							varname = FUNC10("%s%s", varprefix, varname);

						/* store result as a string */
						if (!FUNC11(st, "gset", varname,
										 FUNC4(res, 0, fld)))
						{
							/* internal error */
							FUNC8(stderr,
									"client %d script %d command %d query %d: error storing into variable %s\n",
									st->id, st->use_file, st->command, qrynum,
									varname);
							goto error;
						}

						if (*varprefix != '\0')
							FUNC9(varname);
					}
				}
				/* otherwise the result is simply thrown away by PQclear below */
				break;

			default:
				/* anything else is unexpected */
				FUNC8(stderr,
						"client %d script %d aborted in command %d query %d: %s",
						st->id, st->use_file, st->command, qrynum,
						FUNC1(st->con));
				goto error;
		}

		FUNC0(res);
		qrynum++;
		res = next_res;
	}

	if (qrynum == 0)
	{
		FUNC8(stderr, "client %d command %d: no results\n", st->id, st->command);
		st->ecnt++;
		return false;
	}

	return true;

error:
	st->ecnt++;
	FUNC0(res);
	FUNC0(next_res);
	do
	{
		res = FUNC3(st->con);
		FUNC0(res);
	} while (res);

	return false;
}