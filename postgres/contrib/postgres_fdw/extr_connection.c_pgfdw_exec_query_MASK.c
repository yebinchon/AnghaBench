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
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const*) ; 

PGresult *
FUNC3(PGconn *conn, const char *query)
{
	/*
	 * Submit a query.  Since we don't use non-blocking mode, this also can
	 * block.  But its risk is relatively small, so we ignore that for now.
	 */
	if (!FUNC0(conn, query))
		FUNC2(ERROR, NULL, conn, false, query);

	/* Wait for the result. */
	return FUNC1(conn, query);
}