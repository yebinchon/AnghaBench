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
struct options {char* dbname; int nodb; int /*<<< orphan*/  quiet; TYPE_1__* filenodes; TYPE_1__* tables; TYPE_1__* oids; scalar_t__ tablespaces; } ;
struct TYPE_2__ {scalar_t__ num; scalar_t__ alloc; } ;
typedef  TYPE_1__ eary ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char**,struct options*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (struct options*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct options*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct options*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct options*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct options*) ; 

int
FUNC10(int argc, char **argv)
{
	struct options *my_opts;
	PGconn	   *pgconn;

	my_opts = (struct options *) FUNC3(sizeof(struct options));

	my_opts->oids = (eary *) FUNC3(sizeof(eary));
	my_opts->tables = (eary *) FUNC3(sizeof(eary));
	my_opts->filenodes = (eary *) FUNC3(sizeof(eary));

	my_opts->oids->num = my_opts->oids->alloc = 0;
	my_opts->tables->num = my_opts->tables->alloc = 0;
	my_opts->filenodes->num = my_opts->filenodes->alloc = 0;

	/* parse the opts */
	FUNC2(argc, argv, my_opts);

	if (my_opts->dbname == NULL)
	{
		my_opts->dbname = "postgres";
		my_opts->nodb = true;
	}
	pgconn = FUNC5(my_opts);

	/* display only tablespaces */
	if (my_opts->tablespaces)
	{
		if (!my_opts->quiet)
			FUNC4("All tablespaces:\n");
		FUNC8(pgconn, my_opts);

		FUNC0(pgconn);
		FUNC1(0);
	}

	/* display the given elements in the database */
	if (my_opts->oids->num > 0 ||
		my_opts->tables->num > 0 ||
		my_opts->filenodes->num > 0)
	{
		if (!my_opts->quiet)
			FUNC4("From database \"%s\":\n", my_opts->dbname);
		FUNC9(pgconn, my_opts);

		FUNC0(pgconn);
		FUNC1(0);
	}

	/* no elements given; dump the given database */
	if (my_opts->dbname && !my_opts->nodb)
	{
		if (!my_opts->quiet)
			FUNC4("From database \"%s\":\n", my_opts->dbname);
		FUNC7(pgconn, my_opts);

		FUNC0(pgconn);
		FUNC1(0);
	}

	/* no database either; dump all databases */
	if (!my_opts->quiet)
		FUNC4("All databases:\n");
	FUNC6(pgconn, my_opts);

	FUNC0(pgconn);
	return 0;
}