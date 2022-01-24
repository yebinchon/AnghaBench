#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  todo ;
struct options {int /*<<< orphan*/  quiet; } ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void
FUNC2(PGconn *conn, struct options *opts)
{
	char		todo[1024];

	/* get the oid and database name from the system pg_database table */
	FUNC0(todo, sizeof(todo),
			 "SELECT d.oid AS \"Oid\", datname AS \"Database Name\", "
			 "spcname AS \"Tablespace\" FROM pg_catalog.pg_database d JOIN pg_catalog.pg_tablespace t ON "
			 "(dattablespace = t.oid) ORDER BY 2");

	FUNC1(conn, todo, opts->quiet);
}