#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  connstr ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ filename ; 
 int /*<<< orphan*/  pg_dump_bin ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* pgdumpopts ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(const char *dbname, const char *create_opts)
{
	PQExpBuffer connstrbuf = FUNC4();
	PQExpBuffer cmd = FUNC4();
	int			ret;

	FUNC1(cmd, "\"%s\" %s %s", pg_dump_bin,
					  pgdumpopts->data, create_opts);

	/*
	 * If we have a filename, use the undocumented plain-append pg_dump
	 * format.
	 */
	if (filename)
		FUNC2(cmd, " -Fa ");
	else
		FUNC2(cmd, " -Fp ");

	/*
	 * Append the database name to the already-constructed stem of connection
	 * string.
	 */
	FUNC1(connstrbuf, "%s dbname=", connstr);
	FUNC0(connstrbuf, dbname);

	FUNC3(cmd, connstrbuf->data);

	FUNC7("running \"%s\"", cmd->data);

	FUNC6(stdout);
	FUNC6(stderr);

	ret = FUNC8(cmd->data);

	FUNC5(cmd);
	FUNC5(connstrbuf);

	return ret;
}