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
typedef  int /*<<< orphan*/  sql ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void
FUNC5(PGconn *conn, unsigned int cursor_number)
{
	char		sql[64];
	PGresult   *res;

	FUNC4(sql, sizeof(sql), "CLOSE c%u", cursor_number);

	/*
	 * We don't use a PG_TRY block here, so be careful not to throw error
	 * without releasing the PGresult.
	 */
	res = FUNC2(conn, sql);
	if (FUNC1(res) != PGRES_COMMAND_OK)
		FUNC3(ERROR, res, conn, true, sql);
	FUNC0(res);
}