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
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  ALWAYS_SECURE_SEARCH_PATH_SQL ; 
 scalar_t__ CONNECTION_BAD ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 
 scalar_t__ showprogress ; 
 scalar_t__ FUNC12 (char*,char*) ; 

void
FUNC13(const char *connstr)
{
	char	   *str;
	PGresult   *res;

	conn = FUNC1(connstr);
	if (FUNC6(conn) == CONNECTION_BAD)
		FUNC7("could not connect to server: %s",
				 FUNC2(conn));

	if (showprogress)
		FUNC9("connected to server");

	/* disable all types of timeouts */
	FUNC10("SET statement_timeout = 0");
	FUNC10("SET lock_timeout = 0");
	FUNC10("SET idle_in_transaction_session_timeout = 0");

	res = FUNC3(conn, ALWAYS_SECURE_SEARCH_PATH_SQL);
	if (FUNC5(res) != PGRES_TUPLES_OK)
		FUNC7("could not clear search_path: %s",
				 FUNC4(res));
	FUNC0(res);

	/*
	 * Check that the server is not in hot standby mode. There is no
	 * fundamental reason that couldn't be made to work, but it doesn't
	 * currently because we use a temporary table. Better to check for it
	 * explicitly than error out, for a better error message.
	 */
	str = FUNC11("SELECT pg_is_in_recovery()");
	if (FUNC12(str, "f") != 0)
		FUNC7("source server must not be in recovery mode");
	FUNC8(str);

	/*
	 * Also check that full_page_writes is enabled.  We can get torn pages if
	 * a page is modified while we read it with pg_read_binary_file(), and we
	 * rely on full page images to fix them.
	 */
	str = FUNC11("SHOW full_page_writes");
	if (FUNC12(str, "on") != 0)
		FUNC7("full_page_writes must be enabled in the source server");
	FUNC8(str);

	/*
	 * Although we don't do any "real" updates, we do work with a temporary
	 * table. We don't care about synchronous commit for that. It doesn't
	 * otherwise matter much, but if the server is using synchronous
	 * replication, and replication isn't working for some reason, we don't
	 * want to get stuck, waiting for it to start working again.
	 */
	FUNC10("SET synchronous_commit = off");
}