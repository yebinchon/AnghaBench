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

	FUNC0(todo, sizeof(todo),
			 "SELECT oid AS \"Oid\", spcname as \"Tablespace Name\"\n"
			 "FROM pg_catalog.pg_tablespace");

	FUNC1(conn, todo, opts->quiet);
}