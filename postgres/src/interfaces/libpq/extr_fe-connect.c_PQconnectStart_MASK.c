#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_BAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 

PGconn *
FUNC4(const char *conninfo)
{
	PGconn	   *conn;

	/*
	 * Allocate memory for the conn structure
	 */
	conn = FUNC3();
	if (conn == NULL)
		return NULL;

	/*
	 * Parse the conninfo string
	 */
	if (!FUNC1(conn, conninfo))
		return conn;

	/*
	 * Compute derived options
	 */
	if (!FUNC2(conn))
		return conn;

	/*
	 * Connect to the database
	 */
	if (!FUNC0(conn))
	{
		/* Just in case we failed to set it in connectDBStart */
		conn->status = CONNECTION_BAD;
	}

	return conn;
}