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
struct TYPE_4__ {int pgCopyIn; int /*<<< orphan*/ * connection; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_1__ ArchiveHandle ;

/* Variables and functions */
#define  PGRES_COMMAND_OK 131 
#define  PGRES_COPY_IN 130 
#define  PGRES_EMPTY_QUERY 129 
#define  PGRES_TUPLES_OK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char const*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC6(ArchiveHandle *AH, const char *qry, const char *desc)
{
	PGconn	   *conn = AH->connection;
	PGresult   *res;

#ifdef NOT_USED
	fprintf(stderr, "Executing: '%s'\n\n", qry);
#endif
	res = FUNC2(conn, qry);

	switch (FUNC3(res))
	{
		case PGRES_COMMAND_OK:
		case PGRES_TUPLES_OK:
		case PGRES_EMPTY_QUERY:
			/* A-OK */
			break;
		case PGRES_COPY_IN:
			/* Assume this is an expected result */
			AH->pgCopyIn = true;
			break;
		default:
			/* trouble */
			FUNC5(AH, "%s: %sCommand was: %s",
								  desc, FUNC1(conn), qry);
			break;
	}

	FUNC0(res);
}