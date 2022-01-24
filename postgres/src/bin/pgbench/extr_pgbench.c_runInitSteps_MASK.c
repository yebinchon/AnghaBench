#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_6__ {char* data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*,double) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC18(const char *initialize_steps)
{
	PQExpBufferData stats;
	PGconn	   *con;
	const char *step;
	double		run_time = 0.0;
	bool		first = true;

	FUNC15(&stats);

	if ((con = FUNC6()) == NULL)
		FUNC7(1);

	for (step = initialize_steps; *step != '\0'; step++)
	{
		instr_time	start;
		char	   *op = NULL;

		FUNC1(start);

		switch (*step)
		{
			case 'd':
				op = "drop tables";
				FUNC12(con);
				break;
			case 't':
				op = "create tables";
				FUNC11(con);
				break;
			case 'g':
				op = "client-side generate";
				FUNC13(con);
				break;
			case 'G':
				op = "server-side generate";
				FUNC14(con);
				break;
			case 'v':
				op = "vacuum";
				FUNC16(con);
				break;
			case 'p':
				op = "primary keys";
				FUNC10(con);
				break;
			case 'f':
				op = "foreign keys";
				FUNC9(con);
				break;
			case ' ':
				break;			/* ignore */
			default:
				FUNC8(stderr, "unrecognized initialization step \"%c\"\n",
						*step);
				FUNC3(con);
				FUNC7(1);
		}

		if (op != NULL)
		{
			instr_time	diff;
			double		elapsed_sec;

			FUNC1(diff);
			FUNC2(diff, start);
			elapsed_sec = FUNC0(diff);

			if (!first)
				FUNC5(&stats, ", ");
			else
				first = false;

			FUNC4(&stats, "%s %.2f s", op, elapsed_sec);

			run_time += elapsed_sec;
		}
	}

	FUNC8(stderr, "done in %c s (%s).\n", run_time, stats.data);
	FUNC3(con);
	FUNC17(&stats);
}