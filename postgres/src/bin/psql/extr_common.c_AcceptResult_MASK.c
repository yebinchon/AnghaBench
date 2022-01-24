#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  PGRES_BAD_RESPONSE 135 
#define  PGRES_COMMAND_OK 134 
#define  PGRES_COPY_IN 133 
#define  PGRES_COPY_OUT 132 
#define  PGRES_EMPTY_QUERY 131 
#define  PGRES_FATAL_ERROR 130 
#define  PGRES_NONFATAL_ERROR 129 
#define  PGRES_TUPLES_OK 128 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 TYPE_1__ pset ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static bool
FUNC6(const PGresult *result)
{
	bool		OK;

	if (!result)
		OK = false;
	else
		switch (FUNC2(result))
		{
			case PGRES_COMMAND_OK:
			case PGRES_TUPLES_OK:
			case PGRES_EMPTY_QUERY:
			case PGRES_COPY_IN:
			case PGRES_COPY_OUT:
				/* Fine, do nothing */
				OK = true;
				break;

			case PGRES_BAD_RESPONSE:
			case PGRES_NONFATAL_ERROR:
			case PGRES_FATAL_ERROR:
				OK = false;
				break;

			default:
				OK = false;
				FUNC3("unexpected PQresultStatus: %d",
							 FUNC2(result));
				break;
		}

	if (!OK)
	{
		const char *error = FUNC1(pset.db);

		if (FUNC5(error))
			FUNC4("%s", error);

		FUNC0();
	}

	return OK;
}